
#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")

(define-post
  2021-02-12
  "Upcoming Multiplayer Mode Announcement"
  @div{
  We cleaned up a billion things.  And we're excited for next week.
  }
  @md{

  Thank you to everyone who has been popping in to chat with us on [Twitch](https://twitch.tv/codespells)!
  We've been inspired by those conversations -- especially the ones related to 
  Magic the Gathering (more on that at the end of this post).

  The last two weeks have been about paying off our [Technical Debt](https://en.wikipedia.org/wiki/Technical_debt).  We accrued a lot of it when we were building our multiplayer proof of concept.  But we're happy to report that we have now:

  * Gotten all 37 of our repos up to date
  * Are prepared to recover from any disasters (like if our cloud development box dies, gets ransomware'ed, or gains sentience and tries to take over the CodeSpells project).
  * Made our existing Rune Collections multiplayer compatible.
  * Made our existing worlds multiplayer compatible.

  We have just two bugs left to fix before we can roll out multiplayer to one or more of our tech demos.

  Okay, now, back to Magic the Gathering.  

  ![](https://upload.wikimedia.org/wikipedia/en/a/aa/Magic_the_gathering-card_back.jpg)

  Lindsey and I have been looking for an idea for a simple multiplayer game mode to begin testing out our multiplayer technology.  Some of the conversations we've had with community members on Twitch about Magic the Gathering have inspired us to try to make a wizard duel multiplayer mode based on MtG.

  If there are things you love about MtG (or similar games) and you think those mechanics would be cool in a CodeSpells multiplayer game mode, let us know.  We're looking for high-level ideas. 

  Oh, and just to repeat the unofficial CodeSpells motto for the billionth time: "CodeSpells is not just one thing."  So please do not misconstrue "Lindsey and I are going to prototype a simple game mode based on MtG" as "CodeSpells is about MtG now."  

  CodeSpells is and always will be about making magic as real as possible.  There are many ways to do that.  We're excited about exploring one such way in the upcoming weeks.  And we're excited about dueling with all of you very soon.

  Spoiler alert: We will kick your butts at CodeSpells.

  @p{- Stephen R. Foster}
  @(logo 200)
  })
