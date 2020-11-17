#lang racket

(provide blog.html)

(require 
  "./blog/lang.rkt"
  "../lang.rkt"
  "./blog/posts.rkt")

(define (blog-container)
  (container
    (h1 
      style: (properties
	       padding-top: 100
	       text-align: "center")
      "The Blog")
    (row
      (map (compose (curry div 
			   class: "p-2 col-xs-12 col-md-6 col-lg-4") 
		    preview-post)
	   (all-posts)))))

(define (big-screen-content)
  (normal-content
    (div class: show-only-on-md-and-up
	 (codespells-navbar)
	 (div 
	      style: (properties 
		       position: 'fixed
		       background-image: (~a "url("path:images/EarthBall.png")")
		       background-size:  "cover"
		       background-position:  "center"
		       background-repeat:  "no-repeat"
		       background-attachment:  "fixed"
		       height: "100vh"
		       width: "100vw"))
	 (blog-container))))

(define (mobile-content)
  (normal-content
    (div class: show-only-on-sm-and-below
	 (codespells-navbar)
	 (blog-container))))

(define (blog.html)
  (page blog.html
	(list
	  (big-screen-content)
	  (mobile-content))))

(module+ main
  (render #:to "out"
	  (list
	    (all-post-pages)
	    (blog.html))))
