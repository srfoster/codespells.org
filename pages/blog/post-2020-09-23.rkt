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
  2020-09-23
  "Eye candy"
  @div{At the end of the day, game design is an art form.}
  @div{

 @p{With the modding tools released, the question becomes: What mods to make?}

 @p{The simplest (and arguably the most important) kind of mod is the humble @b{Asset Mod}.}

 @p{I'll be releasing new assets as mods now that I have the tools to do so.  The only question is... what will the first wave of assets look like?  I'll be doing some design work on that front over the coming weeks.} 

 @p{Oh, and I'll try to articulate my thought process as pretty videos.}
 
 @(iframe width: "560"
          height: "315"
          src: "https://www.youtube.com/embed/bHLUP_SukEI"
          frameborder: "0"
          allow: "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
          'allowfullscreen: #t)

 @p{- Stephen R. Foster}
 @(logo 200)
 })



