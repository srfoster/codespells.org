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
  2020-09-22
  "Make a mod in under 3 minutes!"
  @div{Officially releasing my modding tools to the open source community}
  @div{

  @p{Here's the video tutorial of how to start modding:}

  @(iframe width: "560"
	   height: "315"
	   src: "https://www.youtube.com/embed/PitR4ZvRB7Y"
	   frameborder: "0"
	   allow: "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
	   'allowfullscreen: #t)

  @p{I'm using Unreal 4.25.3 -- you probably should too (though I'd be curious to know if this works with other versions).}

  @p{Suppose we want a mod called @tt{my-mod}}

  @p{Run: @tt{raco codespells my-mod}}

  @p{Now open @tt{my-mod/main.rkt} in DrRacket or an editor of your choice.  It assumes that a blueprint called @tt{HelloWorld} exists.}

  @p{Open the generated Unreal project @tt{my-mod/Unreal/MyMod/MyMod.uproject}.  Create a Blueprint called @tt{HelloWorld} in the @tt{MyMod} plugin's content folder.}

  @p{Build the project and run @tt{my-mod/main.rkt}.}

  @p{- Stephen R. Foster}
  @(logo 200)
  })



