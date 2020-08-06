#lang racket

(provide paralax overlay clear-card logo codespells-navbar)

(require webapp/js 
	 website/bootstrap/font-awesome
	 "./images.rkt"
	 )

(define (paralax path . content)
  (div 
    style: (properties 
	     background-image: (~a "url(" path ")")
	     background-size:  "cover"
	     background-position:  "center"
	     background-repeat:  "no-repeat"
	     background-attachment:  "fixed"
	     position: "relative"
	     height: "100vh")
    content))

(define (overlay . content)
  (div
    style: (properties 
	     padding: 20
	     background-color: "rgba(0,0,0,0.5)"
	     position: "absolute"
	     z-index: "200"
	     width: "100%"
	     color: "white")
    content))

(define (clear-card (header "Header") 
		    (body "Body") 
		    (footer "Footer"))
  (card
    style: (properties color: "black"
		       background-color: "rgba(255,255,255,0.75)")
    (card-header header)
    (card-body body)
    (card-footer footer)))

(define (logo (size 500)) 
  (img 
    width: size
    src: (prefix/pathify path:images/logo.png)))

(define (codespells-navbar)
  (navbar
    #:brand (logo 100)
    ))
