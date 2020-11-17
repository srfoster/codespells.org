#lang at-exp racket

(provide authored-works.html rune-collection-pages)

(require 
  "../lang.rkt"
  "blog/lang.rkt"
  "builds/lang.rkt"
  codespells/lore)

(define-rune-collection-cards-and-pages 
    (rune-collection-cards rune-collection-pages)
  (;cabin-items
   rocks 
   fire-particles 
   ice-particles))

(define-works-cards
  (open-authored-works)
  (arena-world-demo-build cave-world-demo-build voxel-world-demo-build))


(define (patreon-authored-works)
  (list
    (authored-work-card #:name "Rolling Hills" #:preview-image img
		(div
		  (coming-soon)
		  (link-to-patreon)))
    (authored-work-card #:name "Multiplayer Prototype" #:preview-image img
		(div
		  (coming-soon)
		  (link-to-patreon)))))

(define (rune-collection-section)
  (list
    (h2 "Rune Collections")
    (p "Currently, you gain access to one of these collections by downloading a " (authored-work) " that contains it.  In the future, you will be able to add Rune Collections to " (authored-works) " at runtime (i.e. modding).")
    (note "We are in the process of adding these Rune Collections to " @(authored-works))
    (row
      (map 
	(curry div class: "p-2 col-xs-12 col-md-6 col-lg-4")
	(rune-collection-cards)
	))))

(define (patreon-authored-work-section)
  (list
    (h2 "Patron Only Builds")
    (p "These are CodeSpells worlds that are free to our supporters on Patreon.")
    (row
      (map (curry div class: "p-2 col-xs-12 col-md-6 col-lg-4")
	   (patreon-authored-works)))))

(define (demo-authored-work-section)
  (list 
    (h2 "Tech Demo Authored Works")
    @p{These are free CodeSpells tech demo @(authored-works) You can download them, play them, and even re-distribute them to friends.}
    (alert-warning (b "Note. ")  @p{We are currently adding new runes and will update these @(authored-works) when we do.})
    (row
      (map (curry div class: "p-2 col-xs-12 col-md-6 col-lg-4")
	   (open-authored-works)))))

(define (authored-work-container)
  (container
    (h1 
      style: (properties
	       padding-top: 100
	       text-align: "center")
      "Downloads")

    (p "CodeSpells isn't just one thing.")

    (p "As we use the " (authoring-tools) " to create new tech demos, experiences, games, and educational environments, we'll add them below.")


    (demo-authored-work-section)
    (hr)
    (patreon-authored-work-section)
    (hr)
    (rune-collection-section)))

(define (big-screen-content)
  (normal-content
    (div class: show-only-on-md-and-up
	 (codespells-navbar)
	 (authored-work-container))))

(define (mobile-content)
  (normal-content
    (div class: show-only-on-sm-and-below
	 (codespells-navbar)
	 (authored-work-container))))

(define (authored-works.html)
  (list
    (rune-collection-pages)
    (page builds.html
	  (list
	    (big-screen-content)
	    (mobile-content)))))

(module+ main
	 (render #:to "out"
		 (list 
		   (bootstrap-files)
		   (authored-works.html)
		   images
		   )))
