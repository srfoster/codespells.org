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
  2020-09-17
  "Releasing a demo mod"
  @div{Since moddability is the core of this game, I wanted to get that out with the first release}
  @div{

  @p{The CodeSpells community has been very active on Discord, making some AWESOME Runes.  I released a demo mod today @(github:codespells-demo-mod)
  to show how to package up some Unreal content and ship it as a mod, along with a custom Rune.}

  @p{I updated the README here: @(github:codespells)}

  @p{I'm gearing up for a much more detailed post about how to mod CodeSpells -- either tomorrow or next week.}

  @p{- Stephen R. Foster}
  @(logo 200)
  })



