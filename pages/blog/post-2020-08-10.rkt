#lang at-exp racket

(require "./lang.rkt")

(define (authoring-tools)
  (list
    (span
      style: (properties 'white-space: "nowrap")
      (img:noun_quill.svg width: 20)
      @b{CodeSpells})
    @b{ Authoring Tools}))

(define (authored-works)
  (list
    (span
      style: (properties 'white-space: "nowrap")
      (img:noun_Book.svg width: 20)
      @b{CodeSpells})
    @b{ Authored Works}))

(define (authored-work) 
  (list
    (span
      style: (properties 'white-space: "nowrap")
      (img:noun_Book.svg width: 20)
      @b{CodeSpells})
    @b{ Authored Work}))

(define (canon) 
  (list
    (span
      style: (properties 'white-space: "nowrap")
      (img:noun_Library.svg width: 20)
      @b{CodeSpells})
    @b{ Canon}))

(define (the-seeker)
  (list
    (span
      style: (properties 'white-space: "nowrap")
      (img:noun_Book.svg width: 20)
      @b{CodeSpells:})
    @b{ The Seeker}))

(define-post 
  2020-08-11
  "The CodeSpells Story - Part 2"
  @div{
  How did COVID-19 bring CodeSpells back?
  }
  @div{
  @p{If you haven't already, read @a[href: 
				      (thunk*
					(define first-part 
					  (dynamic-require 
					    "./pages/blog/post-2020-08-07.rkt" 
					    'post:the-codespells-story-with-pictures))

					(prefix/pathify 
					  (post->path (first-part))))
				      ]{the first part of the CodeSpells story}.}

  @p{But if you don't have time, here's the summary: the fundamental ideas behind CodeSpells came to me in early 2007, while
  playing a philosophical game called @(link-to-nomic).  In the following years, I built
  many prototypes of this game.  With the advent of COVID-19, I've decided to resume development on it. }

  @p{Admittedly, I can't really give COVID-19 @i{all} the credit.  But I suppose we could say,
  "the stars aligned" -- and COVID-19 happened to be the final star.}

  @p{A few other stars:}

  @(ul
     @li{I like building software that breaks new ground.  I got my Ph.D. because I actually @i{like} original research.  I like being on the cutting edge.  And I like to decide for myself what the cutting edge is.}
     @li{Over the years running my own small businesses, I've had to engineer a lot of boring (not cutting edge) software, and I've been @i{dying} to build something more interesting.  Something groundbreaking.  Something beautiful.}
     @li{CodeSpells has always been there: waiting for me, calling to me.  It's like a voice I can't get out of my head.}
     @li{All I was missing was the time and resources.})

  @p{COVID-19 gave me time -- by forcing my small businesses (and everyone else's)
  to move online and to become very, very lean (if possible). Businesses are like 
  organisms; they must adapt to this long economic winter, or they must give up and 
  succumb to the cold.}

  @p{My businesses (@(link-to-thoughtstem) and @(link-to-metacoders)) used to teach
  coding classes in schools.  As you probably know, America's schools are facing
  an uncertain future.  Will they re-open?  Will people get sick?  Will they close
  again?  And what will education look like in the coming months and years?}

  @p{Luckily, my businesses are blessed with employees who are all technologically skilled digital natives or digital immigrants: We adapted quickly, moving smoothly into online education. 
  I've been fortunate that the effects of these adaptations on my own work life have 
  been largely positive: I have fewer moving parts to manage, fewer issues
  that require my attention, I no longer have to rent an office, and I've 
  been able to catch up on years' worth of backlogged work.}
  
  @p{Meanwhile, the persistent voice of CodeSpells has only grown louder since 
  the novel coronavirus reached American shores.  Amidst all the bad, I'm determined
  to do something good with the small gift COVID-19 brought: the gift of time.}

  @p{- Stephen R. Foster}
  @(logo 200)
  })




(define-post 
  2020-08-11
  "The CodeSpells Story - Part 3"
  @div{
  Where is CodeSpells going? 
  }
  @div{

  @p{Long post.  But if you read to the end, there will be cake.}

  @p{Over the years I've fielded thousands of questions about CodeSpells.  Is it a game?  Is it a sandbox?  Will it have ice magic?  Will it have a story?  Will it have girl wizards?  Will it have dragons?  Will it be moddable?  Why can't you write spells in Python?  It is appropriate for my three-year-old?  Can I have 10,000 free copies for my school district?  Why haven't you added ice magic yet?  Will it be more like @i{Avatar: The Last Air Bender} or @i{Harry Potter} or @i{The Lord of the Rings} or @i{The Wizard of Earthsea}?  Can I write spells with Ruby?  Can I write spells with Haskell?  Can I write spells with Cobol?  Can I have the source code so I can make my own coding game?  Can we get on a Zoom call to discuss my ideas for different kinds of ice magic?  And so on.}

  @p{I think I can answer a broad swath of questions in this post.  But let's start with the big picture.}

  @(side-note
    @h5{(big picture)}
    @(hr)
    @p{My guiding principle is @b{CodeSpells is a community}.}) 

  @p{I'm using the mantra @b{CodeSpells is a community} to guide my software development process.  It's a north star to help me chart courses through as-yet undiscovered design space.}

  @p{If you haven't already, please check out the CodeSpells Patreon page.  Join the community and help me chart these courses:} 

  @(link-to-patreon)

  @(br)
  @(br)

  @p{We're using Patreon and Discord to grow, organize, and communicate with our community.  And I'll be using my own kind of magic (called "being a skilled software engineer") to ensure that the evolving CodeSpells codebase can flexibly bring joy to a diverse community.}

  @p{I've already begun weaving this software engineering enchantment: I'm in the midst of a ground-up rewrite of the CodeSpells codebase.  Instead of developing a single monolithic thing called CodeSpells, I'm developing three different things, the combination of which is intended to cause a Big Bang -- to cause the CodeSpells multiverse:}
    
       @(card 
	  (card-body 
	    @(img:noun_quill.svg width: 50)
	    @b{CodeSpells Authoring Tools.} 
	    @p{This is a set of tools and APIs to author CodeSpells environments, sandboxes, games, and stories.  And yes, I used the plural of "environments", "sandboxes", "games", and "stories" on purpose.  The authoring tools will be as free and open source as I can make them, so that anyone can create code-your-own-magic-spells experiences (called @(authored-works)).  I've already built prototypes of these tools and am using them myself: Stay tuned for future blog posts!}))

       @(card
	  (card-body 
	    @(img:noun_Book.svg width: 50)
	    @b{CodeSpells Authored Work(s).} 
	    @p{A @(authored-work) is any software (a sandbox, game, coding environment, ice magic simulator, etc.) written with the @(authoring-tools).  These can be simple experiences or full-fledged games.  They will all be code-your-own-magic-spells experiences (because that's what the @(authoring-tools) help developers create).  I'm currently authoring one such work now, entitled @(the-seeker).  More on this soon!}))

       @(card 
	  (card-body
	    @(img:noun_Library.svg width: 50)
	    @b{CodeSpells Canon.} 
	    @p{Any CodeSpells community member can publish their @(authored-works).  We'll even help you.  We won't restrict or censor works that people author (except for obvious things like hate speech, etc.).  If certain high quality works happen to agree with the existing @(canon), we will dub those works part of the @(canon) as well.  @(the-seeker) will be the first work in the @(canon).} 
	    @p{What we want to see is a thriving ecosystem of @(authored-works) (whether they be "fan fiction" or "canonized works") all of which are 3D experiences about coding your own magic spells.  As excited as I am about personally authoring works like @(the-seeker) and the many others I have planned, I want to empower others to make such works themselves.  We'll facilitate this by maintaining the @(authoring-tools) and various resources for becoming part of the @(canon): writers guidelines, lore references, art guidelines, free art you can use, API references, documentation, tutorials, sample works, a community of friendly people, links to works from our website, etc. We want to help great works get written and found. We want to build a community around making unstarted works started, unfinished works finished, bad works good, and good works great.}))


  @(br)
  @h2{Meta-force and Metaphors Be with You}

  @(p(img:star-wars-novels.jpg width: "100%"))

  @p{Some of you may remember the old days of @i{Star Wars} novels -- before Disney acquired the franchise.  George Lucas's sci-fi universe was open, such that anyone could author a @i{Star Wars} book set in that galaxy far, far away.  Certain works that wove themselves into the existing canon became canon themselves.  I want to create something similar -- except not with novels, but with @(authored-works).}

  @p{So to summarize: @b{CodeSpells is a community}.  And I'm going to do my best to create things that empower us.  I have three such things planned: 

    @(ul
       @li{The @(authoring-tools),} 
       @li{several @(authored-works),} 
       @li{and ultimately the @(canon).})  
    
   CodeSpells has always been bigger than me.  Together, we can make it bigger than all of us.}

  @p{Now, finally, we are ready to answer some common questions...}

  @h2{Some common questions}

  @ul{
  @li{@b{Is it a game?}  Some @(authored-works) will likely be games.}
  @li{@b{Is it a sandbox?}  Some @(authored-works) will likely be sandboxes.  The work I'm currently authoring (@(the-seeker)) is kind of "a sandbox with a story."  Does that make it a game?  I'm not sure.  Works in the @(canon) need not be forced into society's boxes.}
  @li{@b{Will it have ice magic?}  Side note: Why are people so obsessed with this?  Searching "ice magic" in my inbox turns up soooooo many results.  To answer the question: Nothing in the @(authoring-tools) nor in the lore defined by @(the-seeker) will preclude having ice magic.  So: Sure! Maybe!  Given how excited people are about it, I suspect ice magic will find its way into the @(canon).}
  @li{@b{Will it have a story?}  Everything @i{I} write will have a story -- but that's more because I've always loved good fiction and well-told stories, not because it's a requirement for a work to be in the @(canon).}
  @li{@b{Will it have girl wizards? Will it have dragons?} Nothing stopping these! I would predict that the @(canon) will have both.}
  @li{@b{Will it be moddable?} The @(authoring-tools) will let people make 3D experiences which are, themselves, modifiable: both from within the game (as spells) and from outside of the game (as mods).  So yes: every @(authored-work) can have additional mods.  These mods can even become @(authored-works) too.  I will likely invite people to mod @(the-seeker) however they wish when it is released.}
  
  @li{@b{Why can't you write spells in Python/JavaScript/Ruby/Haskell/Cobol/etc?}
  Well, you can, I suppose.  The @(authoring-tools) will allow spells to be written in any language or even in multiple languages.  Initially, I'll be supporting programming languages that I create myself.  I'll be creating ones that seemlessly integrate with the stories I want to tell in @(the-seeker).  And the @(authoring-tools) will allow authors to create programming languages that fit with @i{their} stories too.  If developers want to use Python, they can.  It will be as simple as writing a REST API client in Python.  (Note: I would likely not canonize a work that uses Python/JavaScript/Ruby/Haskell/Cobol for spell crafting unless your lore convincingly explains why a programming language invented on the planet Earth is what wizards of your story use for spell crafting.)
  }
  
  @li{@b{It is appropriate for my three-year-old?} If someone authors a @(authored-work) for three-year-olds, then... yes.}

  @li{@b{Can I have 10,000 free copies for my school district?} I plan on releasing most of my @(authored-works) for free.  So yes.}
  
  
  @li{@b{Why haven't you added ice magic yet?}  OMG, if another person asks me about ice magic, I'm going to permanently ban ice from the @(canon).}
  
  @li{@b{Will it be more like @i{Avatar: The Last Air Bender} or @i{Harry Potter} or @i{The Lord of the Rings} or @i{The Wizard of Earthsea}?}  Stay tuned.  One of the reasons I'm writing @(the-seeker) is to create a point of reference for the general "feel" of @(authored-works). That said, I envision the CodeSpells universe as more of a multiverse -- infinitely large and diverse.  So I suppose you could author a work where wizards are all rubber duckies, or where all spells pertain to apple pie, or where coding takes the form of farting into bottles.  But works that resonate well with @(the-seeker) and other canonized works are more likely to be dubbed canon.  Spoiler alert: There will be no rubber duckies, apple pie, or bottle farts in my works.  Well, okay: Maybe apple pie.  We'll see.}
  }

  @p{Thanks for reading to the end.  Here's some pie for you.  I know I promised cake, but...  the cake is a pie.}

  @p{@(img:apple-pie.jpg width: "50%")}

  @p{- Stephen R. Foster}
  @(logo 200)
  })



