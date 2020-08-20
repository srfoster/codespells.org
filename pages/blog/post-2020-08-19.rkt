#lang at-exp racket


;TODO: make this a legit package.
(require "../../lang.rkt")
(require "./lang.rkt")

(define-post 
  2020-08-19
  "Why Runes?"
  @div{
    The three reasons why Rune-based coding is the right fit for CodeSpells.
  }
  @div{
    @p{In the @a[href: "/posts/voxels-and-runes.html"]{last post}, I showed a spell written in a Rune-based programming language.}

    @(div
       style: (properties
		width: "100%"
		height: 120 
		position: "relative")
       (typeset-runes crunchy-demo-lang 
		      (build small)))


    @p{It's the same spell being cast in this video: when it lands, it raises (@(typeset-rune-inline crunchy-demo-lang build)) the terrain by placing a small (@(typeset-rune-inline crunchy-demo-lang small)) sphere.  You can see it in action here:}

    @(video:build-sphere-demo.webm)

    @(hr)

    @p{Now, I've met approximately five billion coders in my day, so I know some of the questions they'll ask: What if I want a cube, not a sphere?  What if I want a sphere with radius @i{X}, not just a "small" sphere?  What if I want the Runes to look different?  What if I want to define a variable; can I customize how its rune looks?  What if I want the sphere to be made of ice?  Etc.}

    @p{And then, there's the favorite question of good coders: Why?  Why runes?}
    
    @p{Well: I'm glad you asked.}

    @h3{@b{@i{The artistic reason:} Code should "feel" magical}}
    
    @p{Fundamentally @(authored-works) are works of art.  They're supposed to
    immerse you in the fantasy of being a wizard.}

    @p{I don't know about you, but programing Java or Python takes me right out of the fantasy.  It would be like Tolkien saying, @i{And then Legolas checked his watch.  It was time for battle.} Blockly breaks the illusion for me too -- to a (slightly) lesser degree.}
    
    @p{But runes?} 
    
    @p{I can clearly imagine wizards using runes to harness magic and bend it
    to their will.  In Ursula K. Le Guin's @i{Earthsea} cycle, wizards have to 
    know the "true name" of something in order to gain power over it.
    In my @(authored-works), encountering a Rune is equivalent to learning something's
    true name.  You can now use the Rune to write spells you couldn't before.}

    @(br)

    @h3{@b{@i{The gamification reason:} Code should integrate with gameplay}}
    
    @p{Many @(authored-works) will be games (or at least they'll employ @i{some} form of gamification).}

    @p{In old versions of CodeSpells, after spending months developing the in-game
    coding experience, my collaborators and I have always struggled with the 
    game design aspect of the project: What, ultimately, will the player do... 
    aside from coding?}

    @p{We never had a satisfactory answer.  Everything we came up with
    felt "bolted on", designed after-the-fact, and artificial.}

    @p{But with Runes?  They make the perfect
    collectable.  The more you collect, the more powerful your spells. 
    Suddenly comming up with "game loops" (as the fancy people call them) becomes easy.  
    Here's one recipe: }

    @(side-note
      @(h5 "(build your own game loop)")

      @ul{
       @li{The player will use spells to do @i{X} so they can collect more Runes.}
       @li{Runes will let players write better spells, so they can do more @i{X}.}}
       
      @p{Just fill in @i{X}.})

    @p{It doesn't make game design easy.  But it certainly makes it @i{easier}.}

    @p{I hope the @(canon) will be full of works about collecting knowledge of
    cool languages for crafting spells I've never seen before.  
    Make a work like that, and you can bet I'll play it.}

    @(br)

    @h3{@b{@i{The modding reason:} I want modding and spellcrafting to be friends.}}
    
    @p{I define modding as: writing code outside of a @(authored-work)
    -- either to change the work or to create a new one.
    I define spellcrafting as writing code inside an @(authored-work) --
    for the purposes of altering the world around you.}

    @p{Note: Unlike spellcrafting, it's okay for modding to break the fourth wall
    and not "feel magical."  In theory, any language would be adequate --
    even Cobol or Fortran.}
    
    @p{That said, I want there to be a clear pathway for players to become modders.
      This is both for their own sake and because @(codespells-is-a-community).
      Communities grow when the people within them grow.} 

    @p{Runes allow me to make spellcrafting and modding so similar
    that they are really just slightly different syntaxes for the same
    semantics.}
    
    @p{I suppose you could make a Rune version of any modern programming language.
    You just have to do two things: 1) say what the syntactic (glue-like) bits 
    should look like as Runes (parentheses, curly braces, square brackets, commas, angle brackets, etc.), and 2) say what the semantic (meaningful) bits in your language should look like as Runes (@tt{if}s, @tt{and}s, @tt{or}s, keywords like @tt{class} and @tt{for}, API functions name, user-defined variables, etc.).}

    @p{Luckily @a[href: "https://racket-lang.org"]{the language} I'm using to build the @(authoring-tools) (and therefore
									   the one that 
									   mods can be written in out-of-the-box) is a
    descendent of Lisp.  So for me, there's less work making Runes for all the boring
    glue-like bits and a lot more time for the fun meaning-carrying bits.  
    And more importantly, for players, there will be none of this nonsense: 
    "Congratulations, you killed the @b{Possessed Wizard} with a fireball.  You've unlocked... a @b{Comma Rune} and a @b{Curly Brace Rune}!"}

    @p{Lame.  Breaks the fourth wall.  It's like Tolkien saying: @i{News of Legolas's prowess
    in battle reached Sauron by way of Tik Tok.  The orcs were ordered to post mean comments.}} 

    @p{Note: In my @(authored-works) I'll be giving wizards knowledge of the boring @b{Parentheses Runes} for free.  (They are simply Runes for grouping other Runes.)  So whenever players 
    collect a new kind of Rune, it'll always be something they can actually get
    excited about, a "true name," something with real semantic meaning
    -- not something syntactically lame, like a square bracket or a semi-colon.}

    @side-note{
      @h5{(programming language musings)}
      @(hr)
      @p{I wonder if John McCarthy in 1958 realized that his hyper-minimal syntax
      would one day be the perfect fit for wizard coding games in the year 2020.}}

    @h3{What's next?}

    @p{My next post will talk more about what Runes and Rune-based coding will be like
    and how the @(authoring-tools) will help authors create their own Rune-based languages.}

    @p{- Stephen R. Foster}
    @(logo 200)
  })


(define-post 
  2020-08-19
  "An Early Sneak Peek at Rune Creation Tools"
  @div{
    I'm not just making Runes or Rune creation tools for myself.
    I want the creation of spellcrafting languages to be something that knits us
    together as a CodeSpells community.
  }
  @div{
    @p{What if I want to deform the terrain with cubes, not a sphere?  What if I want a sphere with radius @i{X}, not just a "small" sphere?  What if I want the sphere to be made of ice?  What if I want there to be red ice and yellow ice and green ice?  Etc.}

    @p{All questions are the same @b{Big Question} really.  It's a valid one: @i{What if your language doesn't let me say what I want to say?}  And for those who subscribe to @a[href: "https://en.wikipedia.org/wiki/Linguistic_relativity"]{the Sapir-Whorf hypothesis}, the question becomes a philosophical one:}

    @(side-note
       @h5{(language == thought)}
       @(hr)
       @p{@b{What if your language doesn't let me express the thoughts I have in my mind?}}
       @p{No one likes having their thoughts restricted by someone else's language.  I certainly don't.  George Orwell hated the idea so much, he wrote a whole book about it.  Why would the CodeSpells community be any different?  We are a community of dreamers.  Our genre is "fantasy" -- a word practically synonymous with "dream."    We want magic to @i{enable} dreams, not @i{restrict} them.})

    @p{I'm excited, though, because I think I have a solution to the fundamental problem of: @b{How do I make a language that enables the expression of all (reasonable) dreams?}}

    @p{I'll confess: my solution isn't really @i{my} solution.  It's one that we (the human race) have been working on at an exponentially increasing rate since circa the 1950s: @b{Don't build one language; Build a zillion}.  Different ones allow us to express different things in different ways.  No humble-brag intended, but: I know a @i{bunch} of programming languages, libraries, and frameworks, and it's still a tiny fraction of the number that exist on the planet Earth.}
    
    @p{I dare say, the @(canon) shall add a few more.  Rune-wielding wizards of worlds far away would, I think, have noticed a very interesting fact: Runes are just things in the world;
    and spells are capable of querying and changing things in the world.  
    The moment such wizards discovered how write spells capable of @i{reading
    in more Runes}, they would (as we did here on Earth) immediately begin 
    writing what one might call "interpreters" or "compilers."
    They would immediately begin crafting new Runes, with
    new semantics, and new rules of combination.  In other words: new languages.
    A Tower of Babel?  I think of it more like a linguistic super nova.}
    
    @p{So for the last few days, I've been in my wizard tower forging very specific facets of the @(authoring-tools) -- the facets that will enable me @i{and others} to create new Rune-based programming languages.  Because @(codespells-is-a-community), I'm not just creating languages for my own @(authored-works), like @(the-seeker); I'm also paving the way for other developer/writers to do so.}

    @p{One thing I've done is begin the creation of @a[href: "https://github.com/srfoster/codespells-runes"]{a library} for defining how Runes look, for binding Runes to textual identifiers in the Racket language, and for producing Rune programs that are properly formatted and can be intermingled with text.}
    
    @side-note{
    @h5{(documentation == education)}
    @(hr)
    @p{That last part matters because in @(the-seeker), as you progress through the world, you'll be  unlocking pages of a spellbook written by a powerful wizard known as @i{The Seeker}.  The spellbook (essentially "documentation" -- if I may break the fourth wall for a moment) is the only way you'll know what you can do with the Runes you unlock in-game.  Yep: Even Rune-based programming languages need documentation.  Gotta learn 'em somehow!}}

    @p{Before I can get to authoring the "What can Runes do?" part of @(the-seeker), I need to finalize things like:}
    
    @ul{
      @li{"What do Runes look like?"}
      @li{"How can I more quickly create Runes?"}
      @li{"How can Runes be customized by others?"}
      @li{"How can semantics be assigned to Runes?"}
      @li{"How can modders share, reuse, and change Runes (syntactically and semantically)?"}
      @li{"etc."}
    }

    @p{So that's what I've been up to in my wizard tower.  Let's get meta (as we must in CodeSpells) and talk about code for working with code!}

    @p{If you happen to look at the source code for @a[href: "https://github.com/srfoster/codespells.org/blob/master/pages/blog/post-2020-08-19.rkt"]{this blog post}, you'll see that this non-Rune code:}

    @code{
    @pre{
    (typeset-runes
      crunchy-demo-lang
      (build small))
    }
    }

    @p{produces this Rune code, with a "crunchy" look-and-feel I created by hand-crafting
    each rune in Inkscape.}

    @(div
       style: (properties position: 'relative
			  height: 100)
       @(typeset-runes
	  crunchy-demo-lang
	  (build small)))

    @(br)

    @p{However, @i{this} non-Rune code typesets the same @tt{(build small)} a bit differently.}

    @code{
    @pre{
    (typeset-runes
      (basic-lang)
      (build small))
    }
    }

    @p{Here's the result:}

    @(typeset-runes-block
       (parameterize
	 ([svg-filter
	    crunchy])
	 (basic-lang))
       (build small))

    @(br)

    @p{It changes the look and feel. It looks too cartoony. 
    (Don't worry: I'm still working on it.)}

    @(side-note
       @h5{(sneak peeks)}
       @(hr)
       @p{One thing I'm committing to in this CodeSpells Reboot is to produce a meaningful blog post @b{very} regularly.  Like: Every few weekdays.  That means you'll inevitably see stuff that is unpolished and in flux.  Stuff that's hot off the press.  Stuff that's only been on Github for a few hours.  I hope you enjoy the development process.  I hope you'll enjoy always being clued in to what I'm working on and why.}
       @p{And I hope, dear reader, that you'll be understanding and kind.}
       )

    @p{I want to point out a few things about the (still in progress) @tt{basic-lang}.}

    @ul{
      @li{Runes in @tt{basic-lang} remain legible at small sizes.  Important because I want wizards to be able to write large spells with Runes.  Blockly and Scratch both get more and more annoying the longer the program.  I want to solve this problem in Rune-based coding.}
      @li{Runes in @tt{basic-lang} are defined with code -- not in Inkscape (as with @tt{crunchy-demo-lang}) -- so I can create Runes faster.  So can others.  Defining Rune images in code also makes it easier to package up and share Runes with others.  It's just like packaging up and sharing code.  In fact, I'm already using this feature: @tt{basic-lang} is defined over in @(github:codespells-runes) whereas this blog post's code (in @(github:codespells.org)) merely imports it.}
      @li{Each Rune in @tt{basic-lang} is not (just) an SVG image, but also a chunk of HTML (as showcased by the mouseover effect on each Rune.)  I want Runes to be capable of anything that can be done in HTML, CSS, and JavaScript.  They shouldn't be just images.  They should be widgets.  (Yes: You could abuse this power to break the fourth wall if you want to.  Clicking a Rune could open a modal in which you could play Tetris, code in Blockly, or join a Zoom call.  Although I'll be keeping the abuse to a minimum in my own works, I see no reason to restrict others.)}
    }

    @p{Let's leave off with an admittedly silly example (but which actually does work in-game).}

    @code{
      @pre{
        (define (C) 
	  (build small))

	(C)
      }
    }

    @p{This code gets Runeified as follows:}

    @(div
       style: (properties position: 'relative
			  height: 200)
       @(typeset-runes
	  (basic-lang)
	  (define (C) 
	    (build small))))

    @(div
       style: (properties position: 'relative
			  height: 100)
       @(typeset-runes
	  (basic-lang)
	  (C)))

    @(br)

    @p{This code defines a function (using @(typeset-rune-inline (basic-lang) define)).
    The function is called @(typeset-rune-inline (basic-lang) C).  Previously, the underlying identifier @tt{C} was unbound, as was its Rune.  After defining the function, the code calls it.}
    
    @p{Like I said, a bit silly.  But I bring it up to motivate some questions...}

    @p{Some obvious ones: Where did the rune for the unbound @tt{C} come from?  
    What if we wanted to call
    that function something other than @tt{C}?  What if we wanted that Rune to
    look like something that reminds us of what the function does, not the 
    letter C?  }

    @p{Creation of Runes for user-defined variables is a key technical 
    challenge in Rune-based programming.  Luckily, I have a few solutions,
    one of which makes use of both the "Runes-are-widgets-not-images" feature I mentioned
    before, and also the "Runes-are-defined-with-Racket-code" feature.  @b{@i{*gasp!*}} Could it be? Could we use Runes to create new Runes? (How meta can we get with CodeSpells?)  Stay tuned for updates on that and also on the look-and-feel of @tt{basic-lang}.}

    @p{- Stephen R. Foster}
    @(logo 200)
  })

