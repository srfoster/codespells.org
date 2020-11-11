#lang racket

(provide builds.html rune-collection-pages)

(require 
  "../lang.rkt"
  "blog/lang.rkt"
  "builds/lang.rkt"
  codespells/lore)

#;
(define-rune-collection-cards-and-pages 
  (rune-collection-cards rune-collection-pages)
  (fire-particles rocks ice-particles))

#;
(define-works-cards
  (open-builds)
  (arena-world-demo-build cave-world-demo-build voxel-world-demo-build))

;For each rune collection we need a require, a card and a page


(require 
  (prefix-in fire-particles: fire-particles/lore)
  (prefix-in rocks: rocks/lore)
  (prefix-in ice-particles: ice-particles/lore))

(define (rune-collection-cards)
  (map
    rune-collection-name->preview-card
    (list 'fire-particles
	  'rocks
	  'ice-particles)))

(define (rune-collection-pages)
  (define wrapper (lambda (c) (normal-content
				(codespells-navbar)
				c)))
  (list 
    ;Paths must match name, gross again, move to lore
    (rune-collection-page rocks 
			  collections/conjurings-of-rock/index.html
			  wrapper)  
    (rune-collection-page ice-particles 
			  collections/illusions-of-ice/index.html
			  wrapper)
    (rune-collection-page fire-particles
			  collections/illusions-of-flame/index.html
			  wrapper)))


;For each build/work, we need a require and a card

(require
  (prefix-in arena-world-demo-build: arena-world-demo-build/lore)
  (prefix-in cave-world-demo-build: cave-world-demo-build/lore)
  (prefix-in voxel-world-demo-build: voxel-world-demo-build/lore))


(define (open-builds)
  (list
    (let ()
      (add-image! (build->preview-image-page arena-world-demo-build))
      (build->build-card arena-world-demo-build))
    (let ()
      (add-image! (build->preview-image-page cave-world-demo-build))
      (build->build-card cave-world-demo-build))
    (let ()
      (add-image! (build->preview-image-page voxel-world-demo-build))
      (build->build-card voxel-world-demo-build))))









(define (patreon-builds)
  (list
    (build-card "Rolling Hills" img
		(div
		  (coming-soon)
		  (link-to-patreon)))
    (build-card "Multiplayer Prototype" img
		(div
		  (coming-soon)
		  (link-to-patreon)))))

(define (rune-collection-section)
  (list
    (h2 "Rune Collections")
    (p "Currently, you gain access to one of these collections by downloading a " (authored-work) " that contains it.  In the future, you will be able to add Rune Collections to " (authored-works) " at runtime (i.e. modding).")
    (row
      (map 
	(curry div class: "p-2 col-xs-12 col-md-6 col-lg-4")
	(rune-collection-cards)
	))))

(define (patreon-build-section)
  (list
    (h2 "Patron Only Builds")
    (p "These are CodeSpells worlds that are free to our supporters on Patreon.")
    (row
      (map (curry div class: "p-2 col-xs-12 col-md-6 col-lg-4")
	   (patreon-builds)))))

(define (demo-build-section)
  (list 
    (h2 "Tech Demo Builds")
    (p "These are free CodeSpells tech demo builds.  You can download them, play them, and even re-distribute them to friends.")
    (alert-warning (b "Note. ")  "We are currently adding new runes and will update these builds when we do.")
    (row
      (map (curry div class: "p-2 col-xs-12 col-md-6 col-lg-4")
	   (open-builds)))))

(define (build-container)
  (container
    (h1 
      style: (properties
	       padding-top: 100
	       text-align: "center")
      "Downloads")

    (p "CodeSpells isn't just one thing.")

    (p "As we use the " (authoring-tools) " to create new tech demos, experiences, games, and educational environments, we'll add them below.")


    (demo-build-section)
    (hr)
    (patreon-build-section)
    (hr)
    (rune-collection-section)
    ))

(define (big-screen-content)
  (normal-content
    (div class: show-only-on-md-and-up
	 (codespells-navbar)
	 (build-container))))

(define (mobile-content)
  (normal-content
    (div class: show-only-on-sm-and-below
	 (codespells-navbar)
	 (build-container))))

(define (builds.html)
  (page builds.html
	(list
	  (big-screen-content)
	  (mobile-content))))

(module+ main
	 (render #:to "out"
		 (list 
		   (rune-collection-pages)
		   images
		   (builds.html)
		   )))
