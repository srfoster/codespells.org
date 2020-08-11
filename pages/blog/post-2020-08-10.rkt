#lang at-exp racket

(require "./lang.rkt")

(define-post 
  2020-08-11
  "The CodeSpells Story (with Pictures!) - Part 2"
  @div{
  What does it mean for CodeSpells to be "back?"
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

  @p{But if you don't have time, here's the summary: the fundamental ideas behind CodeSpells came to in early 2007 while
  playing a philosophical game called @(link-to-nomic).  In the following years, I built
  many prototypes of this game.  With the advent of COVID-19, I've decided to resume develoment on it. }

  @p{The rest of the CodeSpells story has two parts:}
  
  @(ul
     @li{Why COVID-19 brought CodeSpells back}
     @li{How I'm planning to manage/fund the project, and what the roadmap is.})

  @(h2 "Why COVID-19 brought CodeSpells back")

  @p{We can't really give COVID-19 @i{all} the credit.  But I suppose we could say,
  "the stars aligned" -- and COVID-19 happened to be the final star.}

  @p{A few other stars:}

  @(ul
     @li{I like building software that breaks new ground.  I got my Ph.D. because I actually @i{like} original research.}
     @li{Over the years of running my own small businesses, I've had to engineer a lot of boring software, and I've been dying to build something more interesting.  Something groundbreaking.  Something beautiful.}
     @li{CodeSpells has always been there: waiting for me, calling to me.  It's like a voice I can't get out of my head.}
     @li{All I was missing was the time and resources.})

  @p{COVID-19 gave me time -- by forcing my small businesses (and everyone else's),
  to move online and to become very, very lean.  (If possible.) Businesses are like 
  organisms; we must adapt to this long economic winter, or we must give up and 
  succumb to the cold.}

  @p{My businesses (@(link-to-thoughtstem) and @(link-to-metacoders)) used to teach
  coding classes in schools.  As you probably know, America's schools are facing
  an uncertain future.  Will they re-open?  Will people get sick?  Will they close
  again?  And what will education look like in the coming months and years?}

  @p{My businesses being blessed with employees who are all digital natives and technologically skilled: We adapted quickly, moving smothly into online education. 
  I've been fortunate that the effect of these adaptations on my own work life have 
  been largely positive: I have fewer moving parts to manage, fewer issues
  that require my attention, I no longer have to rent an office, and I've 
  been able to catch up on years' worth of backlogged work.}
  
  @p{Meanwhile, the persistent voice of CodeSpells has only grown louder since 
  the novel coronavirus reached American shores.  Amidst all the bad, I'm determined
  to do something good with the small gift COVID-19 brought: the gift of time.}

  @p{The gift of time means there's only one thing missing: resources.  I have time.  But where's the money?}

  @h2{How I'm planning to manage/fund the project, and what the roadmap is.}

  @p{Stay tuned for a write-up (with pictures!) of the software I've authored so far, and how I plan to structure ongoing software development.}   

  @p{- Stephen R. Foster}
  @(logo 200)
  })




(define-post 
  2020-08-11
  "The CodeSpells Story (with Pictures!) - Part 3"
  @div{
  Where is CodeSpells going? 
  }
  @div{

  @p{Over the years I've fielded thousands of questions about CodeSpells.  Is it a game?  Is it a sandbox?  Will it have ice magic?  Will it have a story?  Will it have girl wizards?  Will it have dragons?  Will it be moddable?  Why can't you write spells in Python?  It is appropriate for my three-year-old?  Can I have 10,000 free copies for my school district?  Why haven't you added ice magic yet?  Will it be more like @i{Avatar: The Last Air Bender} or @i{Harry Potter} or @i{The Lord of the Rings} or @i{The Wizard of Earthsea}?  Can I write spells with Ruby?  Can I write spells with Haskell?  Can I write spells with Cobol?  Can I have the source code so I can make my own coding game?  Can we get on a Zoom call to discuss my ideas for different kinds of ice magic?  And so on.}

  @p{I know from experience that I can't make everyone happy.  But I do think I can answer a broad swathe of questions in this post, namely:
  
    @ul{
      @li{Will it be a game or a sandbox?} 
      @li{Will it be modable?} 
      @li{What programming language will it use?} 
      @li{Will it be free?} 
      @li{And (one question no one has ever asked me, but which is the most important of all), how will you fund the project?}}
  }

  @p{Let's start with the big picture.}

  @(side-note
    @h5{(big picture)}
    @(hr)
    @p{Above all, @b{CodeSpells is a community}.  That comes before anything else it might become:
       @ul{
         @li{A sandbox}
         @li{A game}
         @li{A story}
         @li{A coding environment}
         @li{An ice magic simulator, etc.} 
       }
    }) 

  @p{I'm using the mantra @b{CodeSpells is a community} as a guiding principle in my software development process.  It's a kind of north star to help me chart a course through undiscovered design space.}

  @p{If you haven't already, please check out the CodeSpells Patreon page. Become part of the community: @(link-to-patreon).  This is how I'm funding the project.} 

  @p{We're using Patreon and Discord to grow, organize, and communicate with our community.  And I'll be using my own kind of magic (called being a skilled software engineer) to ensure that the evolving CodeSpells codebase can flexibly meet the needs of and bring joy to the diverse CodeSpells community.}

  @p{To this end, I've begun a ground-up rewrite of the CodeSpells codebase already.  I'm developing not a single monolithic thing called CodeSpells -- but actually three different things, which I hope will create a super nova that results in an infinite number of things that bear the title CodeSpells.
    
     @ul{
       @li{ @b{CodeSpells Authoring Tools.} This is a set of tools and APIs to author CodeSpells environments, sandboxes, games, and stories.  And yes, I used the plural of "environments", "sandboxes", "games", and "stories" on purpose.  These will be as free and open source as I can make them.  These tools will let developers make games that involve coding magic spells.  I've already built a prototype and am using it myself: More on this in a blog post coming soon!}

       @li{ @b{CodeSpells Authored Work(s).} A CodeSpells Authored Work is any sandbox, game, coding environment, ice magic simulator, etc, written with the above @b{CodeSpells Authoring Tools}.  These can be simple experiences or full-fledged games.  They will likely all involve coding your own magic spells (because that's what the @b{CodeSpells Authoring Tools} help developers author).  I'm currently authoring one such work now, entitled @i{CodeSpells: The Seeker}.  More on this in a blog post coming soon!} 

       @li{ @b{CodeSpells Publishing Community.} We'll be making a pipeline for any CodeSpells community members to publish their @b{CodeSpells Authored Works} and to share them with the rest of the community.  We won't be restricting or censoring works that people author (except generally for obvious things like hate speech, etc.).  However, if there are are certain works possessing both high quality and which fit especially with the existing CodeSpells canon works (of which @i{CodeSpells: The Seeker} will be the first), we will dub those works "canon" as well.  What we want to see is a thriving community of "fan fiction" and "canon works" -- all of which are interactive 3D experiences that revolve around coding your own magic spells.  As excited as I am about personally authoring works like @i{CodeSpells: The Seeker}, I want to empower others to make such works themselves. We'll help by maintaining the tools, a publishing process, writers guidelines, etc. We want to help good works get written and found. We want to build a community around making unstarted works started, unfinished works finished, bad works good, and good works great.}
     }
  }

  @p{Some of you may remember the old days of @i{Star Wars} novels -- before Disney acquired the franchise.  George Lucas's sci-fi universe was wide open -- so anyone could author a @i{Star Wars} book.  Certain works that agreed with the existing canon became canon themselves.  I want to create something similar.}

  @p{So to summarize: @b{CodeSpells is a community}.  And I'm going to do my best to create things that empower us -- the community -- to make CodeSpells a reality.  Again.  And again.  And again.  CodeSpells has always been bigger than me.  Together, I think we can make it bigger than all of us.}

  @p{Now, finally, we are ready to answer some common questions...}

  @h2{Some common questions}

  @ul{
  @li{@b{Is it a game?}  Some CodeSpells works will likely be games.}
  @li{@b{Is it a sandbox?}  Some CodeSpells works will likely be sandboxes.  The work I'm currently authoring (@i{CodeSpells: The Seeker}) is kind of a sandbox with a story.  Does that make it a game?  I'm not sure.}
  @li{@b{Will it have ice magic?}  Side note: Why are are people so obsessed with this?  Searching "ice magic" in my inbox turns up a lot of results.  To answer the question: Nothing in the CodeSpells Authoring Tools or the lore defined by @i{CodeSpells: The Seeker} will preclude having ice magic.  So: Sure! Maybe!}
  @li{@b{Will it have a story?}  Everything I write will have a story -- either a very explicit one, like in, @i{CodeSpells: The Seeker}.  Or, in the case of some of the more abstract works I have planned, the experience will still take place somewhere within the CodeSpells multiverse.  I suspect most canon works will at least @i{hint at} how it relates to other canon works.}
  @li{@b{Will it have girl wizards? Will it have dragons?} Nothing stoping these things!}
  @li{@b{Will it be moddable} Even better.  The CodeSpells Authoring Tools will let you make games which are, themselves, moddable.  So every CodeSpells work may have additional mods.  I will likely invite anyone to mode @i{CodeSpells: The Seeker} however they wish when it is released.}
  
  @li{@b{Why can't you write spells in Python/Ruby/Haskell/Cobol/etc?}
  The CodeSpells Authoring tools will allow spells to be written in any language or even in multiple languages.  Initially, I'll be supporting programming languages that I create myself -- such that they seemlessly integrate with the story and experience of @i{CodeSpells: The Seeker}.  If developers want to use Python, it will be as simple as writing a REST API client in Python.  I'll be documenting the REST API to help facilitate the rise of a polyglottic paradise.
  }
  
  @li{@b{It is appropriate for my three-year-old?} If someone authors a CodeSpells work for three-year-olds, then... yes.}

  @li{@b{Can I have 10,000 free copies for my school district?} I plan on releasing most of my CodeSpells works for free.  So yes.}
  
  
  @li{@b{Why haven't you added ice magic yet?}  OMG, the next person who asks me about ice magic, and I'm going to permanently ban ice from the CodeSpells canon.}
  
  @li{@b{Will it be more like @i{Avatar: The Last Air Bender} or @i{Harry Potter} or @i{The Lord of the Rings} or @i{The Wizard of Earthsea}?}  Stay tuned.  One of the reasons I'm writing @i{CodeSpells: The Seeker} is to create a point of reference for the general "feel" of CodeSpells games.  That said, I envision the CodeSpells universe as more of a multiverse.  So I suppose you could author a work where wizards are all rubber duckies.  But works that resonate well with @i{CodeSpells: The Seeker} will be more likely to be dubbed "canon." And I have no plans for rubber duckies in @i{CodeSpells: The Seeker}}
  }
  

  @p{- Stephen R. Foster}
  @(logo 200)
  })



