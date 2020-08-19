#lang at-exp racket

(require webapp/js 
	 "./lang.rkt"
	 "./pages/blog/lang.rkt"
	 "./pages.rkt")

(define (codespells.org)
  (list
    old-rune-images
    images
    videos
    (bootstrap-files)
    (page favicon.ico (build-path "images" "favicon.ico"))
    (index.html)
    (blog.html)
    (all-post-pages)
    ))

(render #:to "out" (codespells.org))
