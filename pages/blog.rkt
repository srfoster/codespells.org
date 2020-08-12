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
  (content
    (div class: show-only-on-md-and-up
	 (overlay
	   (blog-container))
	 (paralax path:images/EarthBall.png
		  (codespells-navbar)))))

(define (mobile-content)
  (content
    (div class: show-only-on-sm-and-below
	 (codespells-navbar)
	 (blog-container))))

(define (blog.html)
  (page blog.html
	(list
	  (big-screen-content)
	  (mobile-content))))
