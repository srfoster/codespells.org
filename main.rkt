#lang at-exp racket

(require webapp/js 
	 "./lang.rkt"
	 "./pages/index.rkt"
         ;"./pages/blog/lang.rkt"
	 ;"./pages.rkt"
         )

(provide site)

(define (site)
  (list
    ;old-rune-images
    (bootstrap-files)
    (page favicon.ico (build-path "images" "favicon.ico"))
    (index.html)
    ;(blog.html)
    ;(authored-works.html)
    ;(all-post-pages)
    images
    videos))

(render #:to "out" (site))
