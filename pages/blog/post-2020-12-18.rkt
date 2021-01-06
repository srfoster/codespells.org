
#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")

(define-post
  2020-12-18
  "Welcome screens and keybindings"
  @div{
  All builds updated 
  }
  @md{
  We updated all the builds this morning with two changes, one visible, one invisible -- both interesting.
  First, I'll describe them.  Then, I'll say why they are interesting.

  * **Visible** - You'll notice that we added a welcome popup whenever the worlds load.  This is
  a live page on our website (you could even @a[href: "/in-game.html"]{visit it in your browser, if you want}).
  The reason for having a live page is that whenever you boot up a @(authored-work), you'll get 
  any recent news and developments.  Unreal.js code is responsible for popping open this welcome page. 

  * **Invisible** - When you press C, the spellcrafting editor pops up -- just like usual.  But invisibly,
  behind the scenes, there is now Unreal.js code that detects your keypress and pops up the editor.  
  Previously, there was Unreal Blueprint code handling the keypress.  This has been changed.

  Why are these things interesting?  Each is a step toward our long-term goal of having CodeSpells 
  be highly re-programmable.  That means removing functionality from the CodeSpells compile time 
  and moving it into the CodeSpells runtime.  
  
  This has several abstract benefits.  Namely, Anything you can do at runtime with Unreal.js, you can:

  * Do with spells,
  * Do with mods,
  * Do in JavaScript,
  * Do in languages that compile to JavaScript,
  * Do in Racket,
  * Do without having Unreal installed,
  * Do without downloading a bunch of junk you don't need

  To put it concretely, this week, we've figured out how to detect and handle keypresses with Unreal.js (the invisible change)
  and we've figured out how to open up new in-game UI with Unreal.js (the visible change).

  These newfound abilities will undoubtedly find themselves coming to a Rune Collection near you in the near future.
  Expect to see Runes that allow you to detect keypresses.  And expect to see Runes that allow you pop open
  new user interfaces.

  I'm excited about the synergy we're getting from Unreal.js.  Any time we write features with Unreal.js, we immediately expand 
  the options for modders and spell-writers.  It fits nicely with our commitment to grow the CodeSpells community.
  We want as much of our code to be open source and easily editable as possible.  

  Exercises for the reader.  In @(github:codespells),
  
  * Can you find the Unreal.js code running in the `demo-aether` that opens up the welcome page?
  * Can you find the Unreal.js code that detects when you press C and opens the spell editor?

  @p{- Stephen R. Foster}
  @(logo 200)
  })
