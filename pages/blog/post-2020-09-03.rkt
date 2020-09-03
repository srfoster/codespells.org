#lang at-exp racket

(require (except-in "../../lang.rkt" small))
(require (except-in "./lang.rkt" small))
(require 
  website-js/components/accordion-cards
 ; (except-in website-js small)
  (prefix-in html:
	     (only-in website
		      script))
  (prefix-in h:
	     2htdp/image)

  codespells-server/in-game-lang)

(define (dummy-lang)
  (local-require (only-in 2htdp/image circle))
  (rune-lang
    'dummy
    (list
      (html-rune 'dummy
		 (svg-rune-description
		   (rune-background
		     #:color "green"
		     (rune-image
		       (circle 40 'solid 'green))))))))

(define-post 
  2020-09-03
  "Particle effects"
  @div{Particles are the key to making magic feel like magic}
  @div{

  @p{The Rune I use in today's video will certainly
  change: @(typeset-rune-inline (dummy-lang) dummy)}

  @p{For one thing, I'm just using a green circle as a placeholder.  It's my generic "test the feature I'm currently working on" Rune.}

  @p{Additionally, this is just a proof of concept that I can spawn in a variety of particle effects.  Over the coming weeks, I'll be working more on how particles look, how they behave, and what the Rune-based interface is for configuring particles.}

  @(video:particle-party.mp4 #:autoplay #f)
  
  @(br)
  @(br)

  @p{Oh!  And I made really good progress toward an official release today.  Though you can't really tell from the video, I was playing in the released build -- not in the Unreal editor.  This is huge.  The Patron-only release of CodeSpells is coming soon!}

  @p{- Stephen R. Foster}
  @(logo 200)
  })



