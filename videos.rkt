#lang racket

(provide videos
	 video:build-sphere-demo.webm)

(require webapp/js 
	 racket/runtime-path
	 syntax/parse/define
	 (for-syntax racket
		     racket/syntax
		     racket/runtime-path))

(define-syntax (define-video stx)
  (syntax-parse stx
		#:disable-colon-notation
		[(_ id)
		 #:with videos/id (format-id stx "videos/~a" #'id)
		 #:with page:id (format-id stx "page:~a" #'id)
		 #:with video:id (format-id stx "video:~a" #'id)
		 #`(begin
		     (define-runtime-path id (~a "videos/" 'id))
		     (define page:id (page videos/id id))
		     (provide video:id)
		     (define (video:id #:autoplay [autoplay #t] . args)
		       ;Ignoring the args.  TODO: Do something fancier, maybe make define/provide/element fancier while we're at it
		       (video 'autoplay: autoplay 'loop: autoplay 'muted: autoplay width: "100%"
                              'controls: (not autoplay)
			      (source src: (prefix/pathify (list "videos" (~a 'id)))
				      type: "video/webm")
			      "Sorry, your browser doesn't support video embeds" ))
		     (set! videos (cons page:id videos)))]))


(define videos '())

(define-video build-sphere-demo.webm)
(define-video build-sphere-demo2.webm)
(define-video build-sphere-demo3.webm)
(define-video evaluation-demo.webm)
(define-video end-of-week-update1.mkv)

(define-video teleport-build.mp4)
(define-video building-statues.mp4)
(define-video digging-a-cave-and-teleporting-around.mp4)
(define-video purple-glass-world.mp4)

(define-video particle-party.mp4)
(define-video particle-structures.mp4)
