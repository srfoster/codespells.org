#lang racket

(provide blog.html)

(require "../lang.rkt")

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
		(clear-card
		  "Aug 5, 2020"
		  "Launched new website..."
		  (a href: (prefix/pathify "blog.html")
		     (button-success
		       "Read It " (fa-angle-double-right))))
		(clear-card
		  "Aug 6, 2020"
		  "Added Patreon and Mailing list links"
		  (a href: (prefix/pathify "blog.html")
		     (button-success
		       "Read It " (fa-angle-double-right))))
		(clear-card
		  "Aug 7, 2020"
		  "Added cool videos"
		  (a href: (prefix/pathify "blog.html")
		     (button-success
		       "Read It " (fa-angle-double-right))))
		)))
	  (paralax path:images/EarthBall.png
		   (codespells-navbar)
		   ))))
