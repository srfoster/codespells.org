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
  2020-09-10
  "Toward a 1st Release"
  @div{Engineering a release means writing documentation}
  @div{

 @p{One of the less glamorous parts of being a software engineer is writing documentation.
  Glamorous or not, though, it's critical for most software.  And CodeSpells is no exception.}

 @p{In fact, documentation is even @i{more} important in a project like CodeSpells than in a normal 3D game.
  The reason, of course, is that CodeSpells is reprogrammable.  It's a piece of software that
  reads and runs your code.}

 @p{For all its flashy 3D-ness, the fact that it is also a runtime environment for programs
  means that its next of kin include the likes of programming languages (like Java, Python, or Racket)
  every bit as much as 3D games (like Minecraft or Fortnite).  CodeSpells is like what would happen if
  a programming language runtime and a 3D game had a baby.}

 @p{Would you use a programming language with no documentation?  I wouldn't.}

 @p{And so, this blog post begins the long journey of creating those magical meta-texts
 we call documentation -- without which the magical texts we call spells would be impossible to write.}

 @p{We begin (as all good documentation perhaps should) with some fundamental truths that would need
  to be understood by anyone contributing to the CodeSpells open source projects.}

 @h4{@i{Truth #1: A @b{World} is a collection of @b{Things}}}

 @side-note{
  @h5{(technical detail)}
  @(hr)
  @p{Because my implementation of CodeSpells is written with the Unreal Engine,
   a @b{World} is roughly equivalent to what Unreal programmers would call a "level", and a @b{Thing} is roughly
   equivalent to what would be called an "Actor."  If (one day) we the CodeSpells community want to
 target the Unity3D game engine, a @b{Thing} would be roughly equivalent to a "GameObject."}}

 @p{"So am I a @b{Thing}?" asked the young wizard.}

 @p{"Yes," said the Arch Mage.  "And so am I."}

 @h4{@i{Truth #2: @b{Things} exist in the @b{World}.  @b{Spells} exist in the @b{Aether}}}

 @p{"But aren't @b{Spells} in the world?" asked the young wizard.}

 @p{"Not technically," said the Arch Mage.  "@b{Spells} are outside of the @b{World} -- in a place we call the @b{Aether}.
  We do, however, view them through a special kind of @b{Thing}."}

 @p{"Ah," said the young one, "you mean the surfaces through which we read and write @b{Spells}?  Those are
  are @b{Things}, but the @b{Spells} aren't?"}

 @p{"Precisely."}

 @p{"What about @b{Runes}?  Are they @b{Spells} or @b{Things}?"}

 @h4{@i{Truth #3: A @b{Spell} (when cast) can create, destroy, or change @b{Things}}}

 @p{"Hmmm," said the young wizard.  "Why can't we just make @b{Spells} @i{be} @b{Things}?  Seems like it would be simpler."}

 @p{"Back in the ancient times, that's how it worked," said the Arch Mage.  "@b{Spells} used to be constructed from physical Runes,
  which were @b{Things}.
  But today, the @b{Runes} you manipulate on your surfaces--"}

 @p{"Which are @b{Things}," the young wizard chimed in.}

 @p{"--are just virtual approximations of those old physical Runes.  Back when our ancestors learned to create surfaces--"}

  @p{"Which are @b{Things}," the young wizard mentioned again.}

  @p{"You don't have to keep saying it," said the Arch Mage.  "When our ancestors created surfaces, it allowed us to
  craft @b{Spells} out of any virtual material we wanted, anything that could be interacted with on a surface:
  @b{Runes}, written text, configurations of 'buttons' and 'switches' -- anything.  Now, depending on what we
  want our @b{Spells} to do, we can select whatever interface best fits the task of writing and editing them."}

 @side-note{
  @h5{(technical detail)}
  @(hr)
  @p{Because a @b{World} is equivalent to an Unreal level -- the @b{Spells} really do exist "elsewhere".
 They are viewable from inside Unreal through @a[href: "https://docs.unrealengine.com/en-US/Engine/UMG/UserGuide/WidgetTypeReference/WebBrowser/index.html"]{the Unreal WebBrowser}.
 The Racket runtime runs a webserver and serves up user interfaces that you interact with from inside Unreal.
 Spells are executed inside of the Racket runtime -- but they can create @b{Things} in the Unreal runtime.
 The Unreal runtime embeds a JavaScript runtime (via @a[href: "https://github.com/ncsoft/Unreal.js/"]{Unreal.js}).
 The Racket Runtime can create @b{Things} and also specify additional JavaScript code that should govern the
 behavior of such @b{Things}.}
  @p{I made this architectural separation so that community members who wish to do so can create whatever outside-of-Unreal
   @b{Spell}-crafting technologies they wish.
   UIs for @b{Spell}-crafting can be written in any web technology (React, jQuery, etc.) and the @b{Spells} can execute in
   any backend technology (Ruby on Rails, Node.js, etc).  These interfaces can be hosted locally or remotely (via a local proxy).}
 @p{Latency between Unreal and the @b{Spell} server is not a large concern.  For operations that need to happen often, e.g.
   on every frame, the @b{Spell} server should ship the appropriate JavaScript to Unreal.}}

 @h4{@i{Truth #4: A @b{Spell} can be thought of in two ways: @b{Crafted} and @b{Casted}.  @b{Magic} is what happens
 after a @b{Spell} is @b{Cast}.}}

 @p{"So... when I've @b{Crafted} a @b{Spell}," said the young wizard, "what happens when I @b{Cast} it?"}

 @p{"@b{Magic}," said the Arch Mage with a faint smile.  "@b{Magic} begins life in the @b{Aether} and continues to live within the @b{World}.
 First, your @b{Spell}, as @b{Crafted} upon your surface, gets interpreted or transformed by whatever gods or machines or incomprehensible
 processes exist in the @b{Aether}.  Those @b{Aetherial} @b{Magical} processes are transformed into @b{Worldly} @b{Magical} processes that continue to unfold here in our @b{World}."}

 @h4{@i{Truth #5: @b{Magic} begins in the @b{Aether} and continues in the @b{World}.  The event of @b{Magic} traveling between
 @b{Aether} and @b{World} is called @b{Crossing}.}}

 @p{"So my @b{Spells} live in the @b{Aether}..." said the young wizard, "...and I @b{Craft} them by using my surface
  (which is a @b{Thing} in the @b{World}).
  And when I @b{Cast} them, they turn into @b{Magic}.  And the @b{Magic} then @b{Crosses} from the @b{Aether} to the @b{World}.
  And that's what makes @b{Things} appear, or move, or whatever?"}

 @p{"Precisely."}

 @p{"Why does magic have to be so complicated?" said the young wizard, rubbing his temples.}

 @p{"Come back tomorrow," said the Arch Mage.  "We'll work through some examples, and I think you'll see that it's not really
  as complicated as it seems."}

 @h4{Glossary (where we make magic boring and mundane)}

 @ul{
  @li{@b{Spell}: equivalent to a "program" here on Earth.}
  @li{@b{Crafted Spell}: a program thought of as a syntactic artifact (text, Runes, blocks, or whatever visual syntactic constructs the CodeSpells community invents).}
  @li{@b{Cast Spell}: a program that has been executed.}
  @li{@b{Magic}: any computation that happens in any environment (@b{World} or @b{Aether}) as a result of @b{Casting} a @b{Spell} (executing a program).}
  @li{@b{World}: a 3D environment, as rendered inside a game engine like Unreal or Unity3D.}
  @li{@b{Aether}: any computational environment outside of the 3D environment (the Racket runtime is currently one such example).}
  @li{@b{Crossing}: communication between a @b{World} and @b{Aether} -- which I've implemented as REST calls between the Unreal and Racket runtimes.}
  @li{@b{Surface}: Any user interface for writing @b{Spells} -- implemented as an Unreal WebBrowser pointed at a web page served by the Racket runtime.}
 }
  
 @p{- Stephen R. Foster}
 @(logo 200)
 })



