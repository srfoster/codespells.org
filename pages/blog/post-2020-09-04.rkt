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
  2020-09-04
  "Particle Structures"
  @div{Toward an API for combining particle systems together.}
  @div{

  @p{In this video, I demo a proof of concept for using particle systems (like the beams I showed in yesterday's post) as building blocks for larger structures.}

  @(video:particle-structures.mp4 #:autoplay #f)

  @(br)
  @(br)

  @p{Ultimately, I'd like these structures to be able to move, affect the world, react to the world, cast additional spells, etc.} 
  
  @p{- Stephen R. Foster}
  @(logo 200)
  })



