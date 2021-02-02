
#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")

(define-post
  2021-01-29
  "Multiplayer success!"
  @div{
  Spell replication is working in one world
  }
  @md{
  As you probably know if you've been @a[href: "https://twitch.tv/codespells"]{following us on Twitch}, we've managed to get spells to replicate across clients and servers.  It's working reliably for reasonably complex spells now.

  This is huge, because it means that we expect to be playing CodeSpells with members of the community very soon. 

  There's still some work to be done, though:

  * We have a ton of stuff to clean up.  Code gets messy when you're trying to discover whether or not something is possible.  Now that we know how to do it, we have to rewrite our code to be less messy.

  * We have to go through and manually patch a lot of the assets we've previously released as mods (fire particles, ice particles, cabin items, rocks, crystals, etc.)  Mainly this involves opening them in Unreal and toggling on "replication" for all of the assets provided by that mod.  In the future, we'll be doing this by default on any mods we release.  But for now, we have to patch our existing mods, which will involve a non-trivial amount of drudge work over the next few weeks.

  * Documentation!  Now that multiplayer is working, we suspect people are going to want to write mods for each other and create new worlds they can meet up in.  We want to document how these things can be done.  

  * There are still a few bugs where the avatar animations don't sync across the network.  We need to track these down. 

  * We need to merge our multiplayer tech into our existing core technology and roll it out to our various worlds and builds.  And we want to document how you can start up local multiplayer sessions with those builds.

  All in all, we're in the "the last 10% takes 90% of the time" part of multiplayer.  But that's okay.  I'd rather be there than in the "can we even pull it off" part of multiplayer.


  @p{- Stephen R. Foster}
  @(logo 200)
  })
