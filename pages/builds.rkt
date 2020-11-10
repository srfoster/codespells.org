#lang racket

(provide builds.html
         mods
         )

(require 
  "../lang.rkt"
  "blog/lang.rkt"
  (prefix-in arena-world-demo-build: arena-world-demo-build/lore)
  (prefix-in fire-particles: fire-particles/lore)
  ;Require in the various builds??
  )

(define (mods)
  (list 
    (page collections/illusions-of-flame/index.html (normal-content
              (codespells-navbar)
              (container
                (h1 (fire-particles:name))
                (fire-particles:description)
                (fire-particles:runes)
                )))
    )
  )

(define (download-button name)
  (a href: (~a "https://codespells-org.s3.amazonaws.com/StandaloneBuilds/" name "/0.0/" name ".zip")
     (button-success "Download for Windows"
		     (img:windows.svg width: 25 style: (properties margin-left: 5)))
     ))

(define (coming-soon)
  (alert-primary "Coming soon!"))

(define (build-card title img . content)
  (card
    (card-header title
		 (img class: "card-img-top"))
    (card-body content)))

(define (open-builds)
  (local-require (prefix-in fire-particles: fire-particles))
  (list
    (build-card "Arena"  img:arena-world-demo.png
                (div
                  (h5 (arena-world-demo-build:name))
                  (arena-world-demo-build:description)
                  (arena-world-demo-build:rune-collections)
                  )
		(div
		  (alert-success (b "Included Runes. ") "Various fire particles"
                                 )
		  (note "We are currently adding new runes and will update this world when we do.")
		  (info "In its current form, we estimate this build to be worth about " (b "3 minutes of fun") ". Try filling the arena with particles.")
		  (download-button "arena-world-demo")))
    (build-card "Cave"   img:cave-world-demo.png 
		(div
		  (alert-success (b "Included Runes. ") "Various fire particles"
                                 )
		  (note "We are currently adding new runes and will update this world when we do.")
		  (info "In its current form, we estimate this build to be worth about " (b "3 minutes of fun") ". Explore the nooks and crannies of the cave.  Listen to the sounds.  Discover that you can escape the level and fall into infinity.")
		  (download-button "cave-world-demo")))
    (build-card "Voxels" img:voxel-world-demo.png 
		(div
		  (alert-success (b "Included Runes. ") "Various fire particles"
                                 )
		  (note "We are currently adding new runes and will update this world when we do.")
		  (info "In its current form, we estimate this build to be worth about " (b "5 minutes of fun") ". Walk through the infinite world.  Fall into ravines.  Try to get out again.  Grumble that we have not yet added the teleport Rune to this build.")
		  (download-button "voxel-world-demo")))))

(define (patreon-builds)
  (list
    (build-card "Rolling Hills" img
		(div
		  (coming-soon)
		  (link-to-patreon)))
    (build-card "Multiplayer Prototype" img
		(div
		  (coming-soon)
		  (link-to-patreon)))
    ))

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
    (note "These tech demos are under active development and will be updated frequently.  The builds you download, however, are NOT self-updating.  To get updated builds, you will have to check back here and re-download.")
    (note "These builds are Windows-only at this time.  We'll let you know when that changes.")
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
		   (builds.html)
                   (mods)
                   )))
