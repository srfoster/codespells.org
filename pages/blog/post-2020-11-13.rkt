#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")
(require "../builds/lang.rkt")

(define-rune-collection-cards-and-pages 
    (rune-collection-cards rune-collection-pages)
  (;cabin-items
   rocks 
   fire-particles 
   ice-particles))

(define-post
  2020-11-13
  "Three new Rune Collections"
  @div{
  New lore.  New rune collections.
  }
  @md{
  Lindsey and I have been hard at work organizing all the Rune Collections we've made and preparing them for release.

  We've put three new Rune Collections on the @(link-to-builds "Downloads Page").  And we have plans for adding worlds that use these collections next week.

  Here are the three (work-in-progress) Rune Collections we added this week.
  
  @(card-row
     (rune-collection-cards))

  Thanks again to everyone supporting us on Patreon!

  @p{- Stephen R. Foster}
  @(logo 200)
  })
