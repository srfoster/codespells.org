
#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")
(require "../builds/lang.rkt")

(define-works-cards
  (non-patron-only)
  (village-world-demo-build polar-facility-world-demo-build temple-world-demo-build))

(define-rune-collection-cards-and-pages 
    (rune-collection-cards rune-collection-pages)
  (cabin-items))

(define-post
  2020-12-08
  "Post-Thanksgiving updates"
  @div{
  Three new tech demo worlds.  One new collection!

  Oh, and some bug fixes. :)
  }
  @md{
  During Thanksgiving week, I was off -- but Lindsey
  worked solo and was able to release three new tech demo @(authored-works)
  and one Rune Collection.

  This is a **BIG** moment because it means
  that the underlying CodeSpells tools
  and infrastructure are solid enough
  that SomeoneOtherThanMe™ can be just as
  productive as I am.

  Lindsey released just as many tech demo @(authored-works)
  and collections as I had the week before
  Thanksgiving.

  Here are her releases:
 
  @(card-row
     (append
       (non-patron-only)
       (rune-collection-cards)))

  Since I've been back, we've been
  working on the non-glamorous-but-still-very-important job of improving our dev ops. 

  We've actually pushed out a few minor bug fixes to all seven @(authored-works) You'll notice that the @(button-success "Close") button has been improved across all seven tech demo @(authored-works).  And you'll notice that the @(span style: "color: cyan" "blue text") that was spamming out
in the top left corner of all our tech demo @(authored-works) has also been removed.

  What does dev ops have to do with this?
  Well, we already have seven @(authored-works) (and we plan to have many many more).  So if every
  small change required us to manually patch
  each @(authored-work), then our productivity would
  slow down more and more over time.

  But because we spent a week working on
  dev ops, we've automated much of this
  deployment pipeline.  So we can patch things and press a button.  
  Then we can go work on something else while all the @(authored-works) get automatically rebuilt
  and all the downloads on @(link-to-builds) get automatically patched.
   
  Our upcoming project is to make a reasonable CodeSpells trailor video
  and to redo our homepage.  A lot of people coming to our site
  probably don't even know we have builds available.

  Perhaps most excitingly... Making the trailor video will require us to do what we enjoy most: add more Runes so there are more spells craftable in-game.  

  @p{- Stephen R. Foster}
  @(logo 200)
  })
