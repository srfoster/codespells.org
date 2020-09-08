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

(define-post 
  2020-09-08
  "Particle Machines???"
  @div{Toward an API for building spell-machines.}
  @div{

  @p{Ultimately, I'd like spells to be able to move, affect the world, react to the world, cast additional spells, integrate with Unreal's physics system, and -- of course -- have a simple DSL that can easily be Runified.} 

  @p{Here's a video I posted on our @(a href: "https://www.youtube.com/channel/UCxCGsdZJ16d1q_3SbtNMbtQ" "CodeSpells YouTube Channel") before Labor Day Weekend, demonstrating some simple machine-like things (basically just a particle system that rotates).}

  @(video:particle-motors.mp4 #:autoplay #f)
  @(br)
  @(br)

  @p{Today, I did more work on the API for creating these machine-like structures with spells.  If you look closely in the following video, you'll see a flash of the text-based code (which ends up being hidden away in a Rune widget). Even though the API (or maybe I should say, DSL) is a work in progress, those of you who have programmed in Unreal or Unity will immediately see my goal: to abstract away all of the setting of locations, rotations, parent/child relationships, etc..  Wizards who don't wish to worry about these things shouldn't have to.}

  @(video:particle-windmills.mp4 #:autoplay #f)
  
  @p{- Stephen R. Foster}
  @(logo 200)
  })



