#lang racket

(provide blog.html)

(require 
  "./blog/lang.rkt"
  "../lang.rkt"
  "./blog/posts.rkt")

(define (blog.html)
  (page blog.html
	(content
	  (overlay
	    (container
	      (h1 
		style: (properties
			 padding-top: 100
			 text-align: "center")
		"The Blog")
	      (card-deck
		(map preview-post
		  (all-posts)))))
	  (paralax path:images/EarthBall.png
		   (codespells-navbar)))))
