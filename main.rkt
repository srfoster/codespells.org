#lang at-exp racket

(require webapp/js 
	 "./lang.rkt"
	 "./pages.rkt")

(define (codespells.org)
  (list
    images
    (bootstrap-files)
    (index.html)
    (blog.html)
    ))

(render #:to "out" (codespells.org))
