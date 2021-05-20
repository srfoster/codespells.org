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
    * @(github:codespells-nexus)
    * @(github:codespells-server)
    * @(github:codespells.org)
    * @(github:codespells-trailer)
    * @(github:codespells-runes)
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
    * @(github:nomic)
    * @(github:chess)
    * @(github:taggable)
    * @(github:magical-orbs-plugin)

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

    ##Twitch-Chat Interactive Games

    * @(github:orb-game-1)

    }
   )
  )

(define (repos-content)
  (normal-content
    #:head (list (title "CodeSpells Github Repositories")
                 (meta name: "description" content: "We have CodeSpells repos galore! CodeSpells is an open-source project, so all contributions are welcome!")
                 ) 
    (div class: show-only-on-md-and-up
         (repos-container)
         )))

(define (repos.html)
  (page repos.html
        (repos-content)))

(module+ main
  (render #:to "out"
          (list
            (repos.html))))
