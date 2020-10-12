#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")

(define-post
  2020-10-06
  "Cloud development!"
  @div{
  The time has come to unlock CodeSpells development for all (including me)
  }
  @div{
  @p{I've made some modding tools (see @(github:codespells)), but they
  require you to have the Unreal Engine installed on your machine.}

  @p{That requirement alone automatically excludes certain people and certain
  computers from the CodeSpells community -- including my own Linux laptop,
  and including Lindsey's otherwise nice Mac.}
  
  @p{Unreal recommends having 100GB of free space.  And every CodeSpells world and mod weighs in at a few Gigs at least.  }

  @p{Space fills up fast.  Plus, as everyone knows, having a good graphics card and lots of RAM is nice too.}

  @p{So: Now that I'm back from vacation, I'm going to try to make a cloud-based solution
  for developing @(authored-works) and @(authoring-tools) via the browser (via an Amazon EC2 instance).  @a[href: "https://gofreak.tumblr.com/post/87018936015/unreal-engine-4-developing-in-the-cloud"]{It's been done.}  And if it worked in 2014, it should still be possible.}
												@p{If I can pull it off, Lindsey can join me in doing CodeSpells development (which will add a whole new developer to the project!), and so can anyone in the community who wants to.  There won't be any installation or setup necessary, because I'm going to pack all that into the cloud-based solution.}



												@p{Oh, and if I happen to find a COVID-safe coffee shop, I could work from there...  (Hey, I can dream, right?)}


 @p{- Stephen R. Foster}
 @(logo 200)

  })
