#lang at-exp racket 

(provide index.html)

(require "../lang.rkt"
         "blog/posts.rkt"
         "blog/lang.rkt"
         )

(define (home-page-card #:title title . content)
  (card class: "m-1 mt-2"
    (card-header
      (h2 title))
    (card-body
      content)))

(define (trailer-video)
  (home-page-card #:title "Trailer"
		  (div class: "embed-responsive embed-responsive-16by9"
		       @alert-primary{Coming Soon!}
		       #;
		       (yt "BqaAjgpsoW8"))))

(define (about-the-game)
  (home-page-card #:title "About the Project"
      @md{
      @b{CodeSpells is a game changer.}

      Like... literally.  You craft spells to change the game.

      Our ambitious goal is that CodeSpells will have the deepest, 
      most interesting magic system of any video game ever created,
      full of linguistic nuance and enchanted toys,
      giving you the ability to completely alter the game you're
      in using nothing more than your knowledge of magic.

      @b{But CodeSpells is more than a video game.}

      Like.. literally.  It's more than **one** video game.  We already have several 
      tech demo sandboxes on our @(link-to-builds) page. 

      But also... CodeSpells is more than a game because it's a 
      platform.  
      Our vision is that anyone can use the @(authoring-tools) to 
      create @(authored-works): games, experiences, and educational environments 
      -- all of which can be reprogrammed "from within" (via spells) and 
      "from without" (via mods).

      We hope you'll follow our progress on the blog, the @(link-to-builds) page, 
      and @(a href: "https://www.patreon.com/codespells" "our Patreon").

      }))

(define (links-card)
  (home-page-card 
    #:title "Handy Links"
    (ul
      (map li
	   (list
	     (a href: "http://store.steampowered.com/app/324190"
		(fa-gamepad)
		" Get the original on Steam")
	     (a href: (prefix/pathify "blog.html")
		(fa-book)
		" Read the Blog" )
	     (a href: "https://www.patreon.com/codespells" 
		(fa-gem) " Join our Patreon" )
	     (a href: "http://eepurl.com/hacdwD"
		(fa-envelope)
		" Join the Mailing List" )
	     (a href: "https://discord.gg/prsZZnm"
		(i class: "fas fa-user-friends")
		" Join the Discord" ))))))

(define (about-the-authors)
  (home-page-card 
    #:title "About the Authors"
    @md{
    **Stephen R. Foster, Ph.D.** and **Lindsey D. Handley, Ph.D.** 

    Together they founded @(a href: "https://www.thoughtstem.com" "ThoughtSTEM"),
    wrote a book called @(a href: "https://dont-teach.com" "Don't Teach Coding"),
    and currently work full-time on CodeSpells.
    }
    ))

(define (builds-card)
  (home-page-card 
    #:title "Builds"
    (div
      (row
	(col-6
	  (p "Works: "))
	(col-6
	  (p "7")
	  )
	)
      (row
	(col-6
	  (p "Rune Collections: "))
	(col-6
	  (p "6")
	  )
	)
      )
    (link-to-builds)))

(define (recent-blog-posts)
  (local-require gregor)
  (home-page-card #:title "The Blog"
      (p "Recent posts:")
      (ul
	(map
	  (compose li
		   (lambda (p)
		     (list
		       (a href: (prefix/pathify (post->path p))
			  (post-title p)
			  " ")

		       (~t (post-date p)
			   "(E, MMMM d, y)"))))
	  (take
	    (all-posts)
	    4)))
      (a href: "/blog.html"
	 "All Posts")))

(define (left-column)
  (div class: "col p-0"
    (trailer-video)     
    (links-card)
    (recent-blog-posts)
    ))

(define (right-column)
  (div class: "col p-0"
   (about-the-game)
   (builds-card)
   (about-the-authors)
   ))

(define (homepage-content)
  (container
    (row
      (left-column) 
      (right-column))))

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
	 (homepage-content)
	 (codespells-footer)
	 )))

(define (mobile-content)
  (normal-content
    (div class: show-only-on-sm-and-below
	 (codespells-navbar)
	 (left-column)
	 (right-column)
         (codespells-footer)
         )))


(define (index.html)
  (page index.html
        (div
          (list
            (big-screen-content)
            (mobile-content)))))

(module+ main
	 (render #:to "out" 
		 (index.html)))


