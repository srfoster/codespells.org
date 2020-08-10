#lang at-exp racket

(require webapp/js 
	 "./lang.rkt"
	 "./pages/blog/lang.rkt"
	 "./pages.rkt")

(define (codespells.org)
  (list
    images
    (bootstrap-files)
    (index.html)
    (blog.html)
    (all-post-pages)
    ))

(render #:to "out" (codespells.org))
