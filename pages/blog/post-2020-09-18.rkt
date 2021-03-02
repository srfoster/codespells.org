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
  2020-09-18
  "More Progress on Modding tools"
  @div{I predict the modding tools will be ready for a full release next week}
  @div{

  @p{Since releasing the minimal-but-moddable demo world a few days ago, I've been trying to get the modding pipeline into something where people can get up and running in a matter of seconds.  It's coming along nicely, and I expect we'll see some of the first community-written mods starting next week.  Crossing my fingers!}

  @p{Here's a demo.   As you can see, once your project folder structure is set up, creation of new content is quick!  Next week, I'll be working on tools to automate that setup.  I'm excited to see what we make together as a community!}

 @(iframe width: "560"
          height: "315"
          src: "https://www.youtube.com/embed/RzW7ixD4ZNY"
          frameborder: "0"
          allow: "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
          'allowfullscreen: #t)

 @p{- Stephen R. Foster}
 @(logo 200)
 })



