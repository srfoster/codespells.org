
#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")
(require "../builds/lang.rkt")

(define-patron-only-works-cards
    (patron-only)
  (log-cabin-world-demo-build))

(define-works-cards
  (non-patron-only)
  (forest-world-demo-build))

(define-rune-collection-cards-and-pages 
    (rune-collection-cards rune-collection-pages)
  (spawners))

(define-post
  2020-11-19
  "Crazy week!"
  @div{
  We released 2 new worlds a new rune collection!
  }
  @md{

  Lindsey and I have been hard at work creating tech
  demos for our @(link-to-builds).  We released
  two new Tech Demo @(authored-works) and 
  a new Rune Collection.  And 
  we added Runes from our 5 existing Rune Collections
  to our existing @(authored-works).

  We even managed to produce our first patron-only @(authored-work) -- which I'm super-excited about, because we've
  been wanting to say a big thank you to everyone supporting
  us on Patreon.

  Here's this week's output, which you can also find
  on our @(link-to-builds).

  @(card-row
     (append
       (patron-only)
       (non-patron-only)
       (rune-collection-cards)))

  @p{- Stephen R. Foster}
  @(logo 200)
  })
