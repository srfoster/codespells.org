#lang racket

(require aws/keys
	 aws/s3
	 net/base64
	 file/md5) 

(aws-cli-credentials "aws-creds")
(credentials-from-file!)


;aws/s3 wasn't handling svgs correctly.  hack it here.
(define old-path->mime-proc (path->mime-proc))

(path->mime-proc
  (lambda (path-string)
    (define ret
      (cond 
	[(string-suffix? (~a path-string) ".svg") "image/svg+xml"]
	[(string-suffix? (~a path-string) ".ttf") "font/ttf"]
	[(string-suffix? (~a path-string) ".woff") "font/woff"]
	[(string-suffix? (~a path-string) ".woff2") "font/woff2"]
	[(string-suffix? (~a path-string) ".webm") "video/webm"]
	[else (old-path->mime-proc path-string)]))

    ;Leave this here because it'll help debug future mime type issues
    (displayln (~a "Mime: " ret))

    ret))
;End hack in svgs.  TODO: Should probably open a pull request on greg's code


(define/contract (port->Content-MD5 in)
		 (-> input-port? string?)
		 (match (base64-encode (md5 in #f))
			;; zap trailing \r\n
			[(regexp "^(.+?)\r\n$" (list _ s)) (bytes->string/utf-8 s)]))

(define/contract (bytes->Content-MD5 b)
		 (-> bytes? string?)
		 (port->Content-MD5 (open-input-bytes b)))

(define (file->Content-MD5 p)
  (-> path-string? string?)
  (call-with-input-file* p port->Content-MD5))

(define (put/file bucket+path
		  path
		  #:mime-type [mime-type #f]
		  #:mode [mode 'binary]
		  #:chunk-len [chunk-len aws-chunk-len-default])
  (put bucket+path
       (λ (out) (call-with-input-file* path #:mode mode
				       (λ (in) (copy-port in out))))
       (file-size path)
       (or mime-type ((path->mime-proc) path))
       (hasheq 'Content-MD5 (file->Content-MD5 path))
       #:chunk-len chunk-len))

(define (file-matches path strings)
  (if (empty? strings)
      #f
      (or 
	(regexp-match (regexp (first strings)) (~a path))
	(file-matches path (rest strings)))))

(define (upload [only-matching '()])
  (fold-files
    (lambda (path kind acc)
      (define short-path (regexp-replace 
			   #rx"^out/"
			   (~a path)
			   ""))
      (when (and (eq? kind 'file)
		 (or (empty? only-matching)
		     (file-matches path only-matching)))
	  (put/file (~a "codespells-org/" short-path)
		    path
		    #:mode 'text)))
    #f
    "out"))

(module+ main
	 (upload (vector->list (current-command-line-arguments))))
