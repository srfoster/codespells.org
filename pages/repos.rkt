#lang at-exp racket

(provide repos.html)

(require 
  "../lang.rkt")

(define (repos-container)
 (container class: "pt-5"
   @md{
    #Repositories

    CodeSpells is an open-source project. We welcome help from all contributors on any of our repositories. More "Getting Started" docs coming soon!

    ##Core Technologies

    * @(github:codespells) 
    * @(github:codespells-runes) 
    * @(github:codespells-server) 
    * @(github:codespells.org) 
    * @(github:codespells-trailer) 
    * @(github:codespells-dev-ops) 
    * @(github:codespells-internal) 

    ##Rune Collections (Mods)

    * @(github:hierarchy) 
    * @(github:fire-particles) 
    * @(github:rocks) 
    * @(github:cabin-items) 
    * @(github:placements) 
    * @(github:towers) 
    * @(github:crystals) 
    * @(github:my-meme-gallery) 
    * @(github:web-browser) 
    * @(github:codespells-dev-runes) 
    * @(github:triggers) 
    * @(github:spawners) 
    * @(github:ice-particles) 
    * @(github:sevarog) 
    
    ##Worlds
    
    * @(github:arena-world) 
    * @(github:cave-world) 
    * @(github:voxel-world) 
    * @(github:forest-world) 
    * @(github:temple-world) 
    * @(github:village-world) 
    * @(github:polar-facility-world) 
    * @(github:cabin-world) 

    ##Works
    
    * @(github:arena-world-demo-build) 
    * @(github:cave-world-demo-build) 
    * @(github:voxel-world-demo-build) 
    * @(github:forest-world-demo-build) 
    * @(github:temple-world-demo-build) 
    * @(github:village-world-demo-build) 
    * @(github:polar-facility-world-demo-build) 
    * @(github:log-cabin-world-demo-build) 

    } 
   ) 
  )

(define (big-screen-content)
  (normal-content
    (div class: show-only-on-md-and-up
	 (codespells-navbar)
	 (repos-container)
         (codespells-footer)
         )))

(define (mobile-content)
  (normal-content
    (div class: show-only-on-sm-and-below
	 (codespells-navbar)
	 (repos-container)
         (codespells-footer)
         )))

(define (repos.html)
  (page repos.html
	(list
	  (big-screen-content)
	  (mobile-content))))

(module+ main
  (render #:to "out"
	  (list
	    (repos.html))))
