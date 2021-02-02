
#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")

(define-post
  2021-01-20
  "Creatures and Multiplayer Progress Report"
  @div{
  Creatures!  Oh, and we've made great strides in multiplayer.
  }
  @md{

  I started implementing some creatures!

  @(yt "4F3DJ0RKYFQ")

  My hope is that we can all spawn and interact with creatures like these 
  in multiplayer soon...

  As you probably know if you've been @a[href: "https://twitch.tv/codespells"]{following us on Twitch}:

  * We've been working on multiplayer!
  * We've been streaming our work daily
  * We've refactored the CodeSpells framework so you can run two worlds and two spell servers at once, on different ports -- obviously critical for testing multiplayer.  
  * We've gotten (most of) the animations to synchronize from client to server and vice versa.  That is, you can run around and the movements are synchronized over the network.
  * We have @b{started} trying to synchronize the effects of your spells.  Just today, we managed to get a simple spell to replicate from server to client.  I predict that in a few weeks we'll have a generalized framework for synchronizing spells in both directions. 

  At that point, it would be nice to see some of you die-hard CodeSpells fans in-game!  

  @p{- Stephen R. Foster}
  @(logo 200)
  })
