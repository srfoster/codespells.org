#lang racket

(provide images)

(require webapp/js 
	 racket/runtime-path
	 syntax/parse/define
	 (for-syntax racket
		     racket/syntax
		     racket/runtime-path))

(define-syntax (define-image stx)
  (syntax-parse stx
		#:disable-colon-notation
		[(_ group id)
		 #:with image/id (format-id stx "images/~a" #'id)
		 #:with path:image/id (format-id stx "path:images/~a" #'id)
		 #`(begin

		     (define-runtime-path id (~a "images/" 'id))
		     (define image/id (page image/id id))
		     (define path:image/id (prefix/pathify (~a "images/" 'id)))
		     (provide id image/id path:image/id)
		     (set! group (cons image/id group)))]))

(define images '())

(define-image images logo.png)
(define-image images CodingDemo1.png)
(define-image images ThroughGrass.png)
(define-image images AtCliff.png)
(define-image images EarthBall.png)

