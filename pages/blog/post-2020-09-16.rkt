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
  
  "../../legacy/in-game-lang.rkt"
  )


(define-post 
  2020-09-16
  "Untested, but released!"
  @div{I haven't tested it heavily, but I have a release out}
  @div{

  @p{I wanted a Windows release out by Friday.  I technically have one today,
  but I need to test it more heavily.  No guarantees it'll work yet.}

  @p{See: @(github:codespells)}

  @p{- Stephen R. Foster}
  @(logo 200)
  })



