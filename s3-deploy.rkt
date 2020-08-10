#lang racket

(require aws/keys
	 aws/s3
	 net/base64
	 file/md5) 

(aws-cli-credentials "aws-creds")
(credentials-from-file!)

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

(define (upload)
  (fold-files
    (lambda (path kind acc)
      (define short-path (regexp-replace 
			   #rx"^out/"
			   (~a path)
			   ""))
      (displayln short-path)
      (when (eq? kind 'file)
	(put/file (~a "codespells-org/" short-path)
		  path
		  #:mode 'text)))
    #f
    "out"))

(module+ main
	 (upload)
	 )
