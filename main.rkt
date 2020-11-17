#lang at-exp racket

(require webapp/js 
	 "./lang.rkt"
	 "./pages/blog/lang.rkt"
	 "./pages.rkt")

(define (codespells.org)
  (list
    old-rune-images
    (bootstrap-files)
    (page favicon.ico (build-path "images" "favicon.ico"))
    (index.html)
    (blog.html)
    (authored-works.html)
    (all-post-pages)
    images
    videos))

(render #:to "out" (codespells.org))
