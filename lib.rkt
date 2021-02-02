#lang at-exp racket

(provide 
  paralax overlay clear-card logo 
  codespells-navbar
  codespells-footer
  normal-content
  side-note
  link-to-builds
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
  github:codespells.org
  github:codespells
  github:codespells-demo-mod)

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
    (nav-link "blog.html" "Blog")
    (nav-link "builds.html" "Downloads")

    (div class: show-only-on-md-and-up
	 (my-social-media-link "facebook" "https://www.facebook.com/codespells") 
	 (my-social-media-link "twitter" "https://twitter.com/codespells") 
	 (my-social-media-link "youtube" "https://www.youtube.com/channel/UCxCGsdZJ16d1q_3SbtNMbtQ") 
	 (my-social-media-link "discord" "https://discord.gg/prsZZnm"))

    ))

(define brown "rgba(255,255,255,.5)") 

(define (my-social-media-link type to)
  (cond [(string=? type "facebook")
         (a href: to 
            target: "_blank"
            class: "fab fa-facebook-square fa-2x p-1"
            style: (properties color: brown)
            )]
        [(string=? type "twitter")
         (a href: to 
            target: "_blank"
            class: "fab fa-twitter-square fa-2x p-1"
            style: (properties color: brown)
         )]
        [(string=? type "discord")
         (a href: to 
            target: "_blank"
            class: "fab fa-discord fa-2x p-1"
            style: (properties color: brown)
         )]
        [(string=? type "youtube")
         (a href: to 
            target: "_blank"
            class: "fab fa-youtube fa-2x p-1"
            style: (properties color: brown)
         )]
    )
  )

(define (codespells-footer)
  (list
    (style/inline
      @~a{
      .fab {
      padding: 5px;
      font-size: 30px;
      text-align: center;
      text-decoration: none;
      }

      /* Add a hover effect if you want */
      .fab:hover {
      opacity: 0.7;
      }
      })
    (footer class: "px-3 pt-4 bg-dark"
            style: "margin-top: 80px; padding-bottom: 40px; position: relative;"
            (container 
              (row class: "justify-content-center"
                   (col-md-3 class: "text-white"
                             (h6 "CodeSpells")
                             (ul class: "list-unstyled"
                                 (li (link-to "./builds.html" (small "Downloads")))
                                 (li (link-to "./blog.html" (small "Blog")))
                                 ))
                   (col-md-4 class: "text-white"
                             (h6 "Support Us")
                             (ul class: "list-unstyled"
                                 (li (a href: "https://www.patreon.com/codespells" target: "_blank" (small "Join Our Patreon")))
                                 (li (a href: "https://store.steampowered.com/app/324190/CodeSpells/" target: "_blank" (small "Purchase Previous Version on Steam")))
                                 (li (a href: "https://codespells.us17.list-manage.com/subscribe?u=dbaae34bac76f17fad7bc6efd&id=a0f4e4cdc2" target: "_blank" (small "Join Our Mailing List")))
                                 )
                             (h6 "Contact Us")
                             (ul class: "list-unstyled"
                                 (li (small "codespells [at] thoughtstem [dot] com"))
                                 ))
                   (col-md-4 class: "text-white"
                             (h6 "Follow Us")
                             (ul class: "list-unstyled"
                                 (li 
                                   (row
                                     (col-12
                                       (a href: "https://www.facebook.com/codespells/"
                                          style: (properties padding-left: "0px")
                                          target: "_blank"
                                          class: "fab fa-facebook-square fa-2x")
                                       (a href: "https://twitter.com/codespells" 
                                          class: "fab fa-twitter-square fa-2x"
                                          target: "_blank"
                                          )
                                       (a href: "https://www.youtube.com/channel/UCxCGsdZJ16d1q_3SbtNMbtQ" 
                                          target: "_blank"
                                          class: "fab fa-youtube fa-2x")
                                       (a href: "https://discord.gg/prsZZnm" 
                                          target: "_blank"
                                          class: "fab fa-discord fa-2x"))))
                                 (li (br))
                                 (li (small "ThoughtSTEM, LLC Copyright 2020"))
                                 (li (small "All Rights Reserved"))
                                 )))))))

(define (link-to-builds (main 
			   "Builds Page"
			   )
			 . content)
  (a href: "/builds.html" 
     main
     content))

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


(define-syntax-rule (define-repo id name url)
  (begin
    (provide id)
    (define (id
              (main 
                (tt name))
              . content)
      (a href: url 
         main
         content))))

;MODS
(define-repo github:hierarchy "hierarchy" "https://github.com/srfoster/hierarchy")
(define-repo github:fire-particles "fire-particles" "https://github.com/srfoster/fire-particles")
(define-repo github:rocks "rocks" "https://github.com/srfoster/rocks")
(define-repo github:cabin-items "cabin-items" "https://github.com/srfoster/cabin-items")
(define-repo github:placements "placements" "https://github.com/srfoster/placements")
(define-repo github:towers "towers" "https://github.com/ldhandley/towers")
(define-repo github:crystals "crystals" "https://github.com/ldhandley/crystals")
(define-repo github:my-meme-gallery "my-meme-gallery" "https://github.com/ldhandley/my-meme-gallery")
(define-repo github:web-browser "web-browser" "https://github.com/ldhandley/web-browser")
(define-repo github:codespells-dev-runes "codespells-dev-runes" "https://github.com/ldhandley/codespells-dev-runes")
(define-repo github:triggers "triggers" "https://github.com/ldhandley/triggers")
(define-repo github:spawners "spawners" "https://github.com/ldhandley/spawners")
(define-repo github:ice-particles "ice-particles" "https://github.com/ldhandley/ice-particles")
(define-repo github:codespells-demo-mod "codespells-demo-mod" "https://github.com/srfoster/codespells-demo-mod")

;WORLDS
(define-repo github:arena-world "arena-world" "https://github.com/ldhandley/arena-world")
(define-repo github:cave-world "cave-world" "https://github.com/ldhandley/cave-world")
(define-repo github:voxel-world "voxel-world" "https://github.com/ldhandley/voxel-world")
(define-repo github:forest-world "forest-world" "https://github.com/ldhandley/forest-world")
(define-repo github:temple-world "temple-world" "https://github.com/ldhandley/temple-world")
(define-repo github:village-world "village-world" "https://github.com/ldhandley/village-world")
(define-repo github:polar-facility-world "polar-facility-world" "https://github.com/ldhandley/polar-facility-world")
(define-repo github:cabin-world "cabin-world" "https://github.com/ldhandley/cabin-world")

;WORKS
(define-repo github:arena-world-demo-build "arena-world-demo-build" "https://github.com/srfoster/arena-world-demo-build")
(define-repo github:cave-world-demo-build "cave-world-demo-build" "https://github.com/srfoster/cave-world-demo-build")
(define-repo github:polar-facility-world-demo-build "polar-facility-world-demo-build" "https://github.com/ldhandley/polar-facility-world-demo-build")
(define-repo github:temple-world-demo-build "temple-world-demo-build" "https://github.com/ldhandley/temple-world-demo-build")
(define-repo github:village-world-demo-build "village-world-demo-build" "https://github.com/ldhandley/village-world-demo-build")
(define-repo github:voxel-world-demo-build "voxel-world-demo-build" "https://github.com/srfoster/voxel-world-demo-build")
(define-repo github:forest-world-demo-build "forest-world-demo-build" "https://github.com/ldhandley/forest-world-demo-build")
(define-repo github:log-cabin-world-demo-build "log-cabin-world-demo-build" "https://github.com/ldhandley/log-cabin-world-demo-build")


;CORE TECHNOLOGIES
(define-repo github:codespells-runes "codespells-runes" "https://github.com/srfoster/codespells-runes")
(define-repo github:codespells-server "codespells-server" "https://github.com/srfoster/codespells-server")
(define-repo github:codespells-internal "codespells-internal" "https://github.com/srfoster/codespells-internal")
(define-repo github:codespells-dev-ops "codespells-dev-ops" "https://github.com/srfoster/codespells-dev-ops")
(define-repo github:codespells.org "codespells.org" "https://github.com/srfoster/codespells.org")
(define-repo github:codespells-trailer "codespells-trailer" "https://github.com/ldhandley/codespells-trailer")
(define-repo github:codespells "codespells" "https://github.com/srfoster/codespells")
