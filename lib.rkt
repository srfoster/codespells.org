#lang at-exp racket

(provide 
  paralax overlay clear-card logo codespells-navbar
  normal-content
  side-note
  link-to-patreon
  link-to-mailing-list
  link-to-steam
  link-to-nomic
  link-to-thoughtstem
  link-to-metacoders
  slugify
  
  show-only-on-md-and-up
  show-only-on-sm-and-below

  github:codespells-runes 
  github:codespells-server
  github:codespells.org)

(require webapp/js 
	 (prefix-in normal- website/bootstrap)
         website/bootstrap/font-awesome
	 "./images.rkt")

(define show-only-on-md-and-up "d-none d-md-block")
(define show-only-on-sm-and-below "d-block d-md-none")

(define (google-analytics)
  (list
    (normal-script 'async: "true" src: "https://www.googletagmanager.com/gtag/js?id=UA-69792221-4")
    (script/inline
      @~a{
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      gtag('config', 'UA-69792221-4');}
      )
    )
  )

(define (normal-content #:head (h (void)) . more)
  (content #:head (list h 
                        (google-analytics))
           more))

(define (side-note . content)
  (card 
    style: (properties margin: 20)
    (card-body content)))

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
    (nav-link 
      "blog.html"
      "Blog")))


(define (link-to-patreon (main 
			   (button-primary
			     (fa-gem)
			     " Join our Patreon" ))
			 . content)
  (a href: "https://www.patreon.com/codespells" 
     main
     content))


(define (link-to-mailing-list (main 
				(button-info
				  (fa-envelope)
				  " Join our Mailing List" ))
			      . content)
  (a href: "http://eepurl.com/hacdwD"
     main
     content))



(define (link-to-steam (main 
			 (button-success
			   (fa-gamepad)
			   " Get it on Steam"))
		       . content)
  (a href: "http://store.steampowered.com/app/324190"
     main
     content))

(define (link-to-nomic (main 
			 "Nomic")
		       . content)
  (a href: "https://en.wikipedia.org/wiki/Nomic"
     main
     content))


(define (link-to-thoughtstem (main 
			 "ThoughtSTEM")
		       . content)
  (a href: "https://www.thoughtstem.com"
     main
     content))

(define (link-to-metacoders (main 
			 "MetaCoders")
		       . content)
  (a href: "https://metacoders.org"
     main
     content))

(define (slugify s)
  (string-downcase
    (regexp-replaces
      (~a s)
      '([#rx"[^A-Za-z0-9 ]" ""]
	[#rx"[ ]+" "-"]))))


(define (github:codespells-runes (main 
				   (tt "codespells-runes"))
		       . content)
  (a href: "https://github.com/srfoster/codespells-runes"
     main
     content))

(define (github:codespells-server (main 
				   (tt "codespells-server"))
		       . content)
  (a href: "https://github.com/srfoster/codespells-server"
     main
     content))

(define (github:codespells.org (main 
				   (tt "codespells.org"))
		       . content)
  (a href: "https://github.com/srfoster/codespells.org"
     main
     content))
