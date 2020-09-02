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

  codespells-server/in-game-lang
  )

(define (spell-card . content)
  (card
   (card-header (first content))
   (card-body
    (card-text (rest content)))))

(define-post 
  2020-09-01
  "New Runes + New Spells"
  @div{Some Runic puzzles for you!}
  @div{
  @p{I added a few Runes today and wrote some spells with them.
 I'll present them as puzzles.  Can you figure out what they do?
 I'll post videos in my next post!}

   @side-note{
     @(h5 "(hint)")
     @(hr)
     @p{If you really do want to try to solve the puzzles, try tracking down the
       source code for this blog @(github:codespells.org).  Find this page,
       and look at the text versions of the spells below.  This alone will
       yield insight.
       If you want even more insight, track down where the Runes are given
       meaning in @(github:codespells-server).}
   }

 @(spell-card "Going somewhere?"
   (typeset-runes-block
    (codespells-basic-lang)
    (teleport)))

 @(spell-card "Going up?"
   (typeset-runes-block
    (codespells-basic-lang)
    (up small (teleport))))

 @(spell-card "Build me up buttercup"
   (typeset-runes-block
    (codespells-basic-lang)
    (up large (build))))

 @(spell-card "BUILD me up buttercup"
   (typeset-runes-block
    (codespells-basic-lang)
    (up large
        (build large))))

 @(spell-card "A statue perhaps?"
   (typeset-runes-block
    (codespells-basic-lang)
    (east large
          (build large)))

   (typeset-runes-block
    (codespells-basic-lang)
    (west large
          (build large)))

   (typeset-runes-block
    (codespells-basic-lang)
    (build large))

   (typeset-runes-block
    (codespells-basic-lang)
    (up large
        (build large)
        (up large
            (build large)
            (up large
                (build large))))))


 @(spell-card "CodeSpells is a multiverse"
   (typeset-runes-block
    (codespells-basic-lang)
    (warp "\"PurpleGlassWorld\"")))

 @(spell-card "You dig me?"
   (typeset-runes-block
    (codespells-basic-lang)
    (dig medium)))

 @(spell-card "This is a ___; the labyrinth's full of 'em"
   (typeset-runes-block
    (codespells-basic-lang)
    (dig medium))

   (typeset-runes-block
    (codespells-basic-lang)
     (down medium
      (dig medium)
      (down medium
       (dig medium)))))
  

  @p{- Stephen R. Foster}
  @(logo 200)
  })



