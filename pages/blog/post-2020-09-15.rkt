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
  2020-09-15
  "Minimal-but-moddable"
  @div{Still hoping for a release this week!}
  @div{

 @p{My goal is to have a minimal-but-moddable release by the end of the week -- a tiny sandbox
 that the community can begin using to test out community-generated content.} 

 @p{Today, I had a breakthrough with Unreal's not-very-documented-at-all support for packaging DLC.
 Basically, I want users to be able to produce their own DLC using all the great tool-support that the Unreal Engine provides.
 And I want any @(authored-work) to be able to load such content in without being rebuilt -- thus @(authored-works)
 can be made moddable.}

 @p{Here I do a quick demo of creating a new particle effect and spawning it with a spell.  I never have to
 rebuild the main executable; I just have to build the mod and produce a ".pak" file containing the new particle effect.}

 @(iframe width: "560"
          height: "315"
          src: "https://www.youtube.com/embed/z1BzMjCR8oI"
          frameborder: "0"
          allow: "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
          'allowfullscreen: #t)

 @p{- Stephen R. Foster}
 @(logo 200)
 })



