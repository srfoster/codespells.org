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
  2020-09-09
  "1st Ever Live Coding Demo"
  @div{Particles are the key to making magic feel like magic}
  @div{

 @p{It is by no means final, but here's a live-coding demo of the spellcrafting language as it is today.
 Even though things will change and even though there are bugs (i.e. too much lag after spells land),
 I wanted to do a demo so that anyone following the CodeSpells story can see how far things have progressed
 in the last few days.  A few days ago, I couldn't even spawn new 3D objects in the world.  Now, as you can see,
 I can spawn various whole systems of them.}

 @(iframe width: "560"
          height: "315"
          src: "https://www.youtube.com/embed/pQXUDtKvwkM"
          frameborder: "0"
          allow: "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
          'allowfullscreen: #t)
 @p{- Stephen R. Foster}
 @(logo 200)
 })



