#lang at-exp racket 

(provide index.html)

(require "../lang.rkt")

(define (calls-to-action)
  (container
    (h2 
      class: show-only-on-md-and-up 
      "Once upon a time...")

    (row
      style: (properties padding-top: 20)
      (col
	class: show-only-on-md-and-up
	(p "... there was CodeSpells.  Don't worry, you can still get it on Steam!"))
      (col
	class: show-only-on-md-and-up
	(link-to-steam)))

    (row
      style: (properties padding-top: 20)
      (col
	class: show-only-on-md-and-up
	(p "Now, there is CodeSpells once again!  We're rebuilding it. It's insane!"))

      (col
	(a href: (prefix/pathify "blog.html")
	   (button-warning
	     (fa-book)
	     " Read the Blog" ))))

    (row
      style: (properties padding-top: 20)
      (col
	class: show-only-on-md-and-up
	(p "You can help co-author the CodeSpells development story by supporting us on Patreon.  (Spoiler alert: You're gonna get free stuff.)"))

      (col
	(a href: "https://www.patreon.com/codespells" 
	   (button-primary
	     (fa-gem)
	     " Join our Patreon" ))))

    (row
      style: (properties padding-top: 20)
      (col
	class: show-only-on-md-and-up
	(p "You can be the first to know when interesting things happen by joining our mailing list.  It's gluten free!"))

      (col
	(a href: "http://eepurl.com/hacdwD"
	   (button-info
	     (fa-envelope)
	     " Join the Mailing List" ))))))

(define (mobile-content)
  (content
    (div
      class: show-only-on-sm-and-below
      (paralax path:images/AtCliff.png 
	       (div 
		 (logo "40%"))
	       
	       (div
		 style: 
		 (properties padding-top: 10)
		 (calls-to-action))

	       ))))

(define (big-screen-content) 
  (content
    (div class: show-only-on-md-and-up
      @style/inline{
      @"@"keyframes pulse {
      0% {
      padding-bottom: 0px
      }
      50% {
      padding-bottom: 10px
      }
      100% {
      padding-bottom: 0px
      }
      }
      }
      (paralax path:images/AtCliff.png 
	       (div 
		 style: 
		 (properties 
		   position: "absolute")
		 (logo "50%"))
	       (div
		 style: 
		 (properties 
		   position: "absolute"
		   color: "white" 
		   text-align: "center"
		   bottom: "0"
		   width: "100%"
		   'animation: "pulse 1s infinite")
		 "(scroll down)"
		 (div 
		   font-size: 50
		   (fa-angle-double-down))))
      (overlay (calls-to-action))

      (paralax path:images/ThroughGrass.png 
	       (div 
		 style: (properties position: "absolute"
				    bottom: 0)
		 (logo "50%"))))))

(define (index.html)
  (page index.html
	(list
	  (big-screen-content)
	  (mobile-content))))
