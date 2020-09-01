#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")
(require 
  website-js/components/accordion-cards
  website-js
  (prefix-in html:
	     (only-in website
		      script))
  (prefix-in h:
	     2htdp/image))

(define-post 
  2020-08-28
  "Evaluating Runes in the 3D World"
  @div{
  End of week update! 
  }
  @div{

  @p{Although there are a million little things I want to
  change, I accomplished my main goal this week: to get a 
  working Rune editor inside of the 3D world of CodeSpells.
  Here's a video demo!}

  @(video 'controls: #t
     (source width: "100%" 
       src: "/videos/end-of-week-update1.mkv"
       ))

  @p{- Stephen R. Foster}
  @(logo 200)
  })



