#lang at-exp racket

<<<<<<< HEAD
(require "./lang.rkt")

(define-post 
  2020-08-20
  "Lindsey's Hello World"
  @div{
    For the past few days, I've been setting up the CodeSpells community infrastructure behind the scenes! Now, it's time to introduce myself!
  }
  @div{
    @p{I met Stephen in July 2008, about a year after he had built his original prototype that would one day evolve into CodeSpells. I remember checking out his Facebook soon after meeting him and being shocked by screenshots of what the community has affectionately termed "The Statue" (see The CodeSpells Story blog post @(a href: "https://codespells.org/posts/the-codespells-story-with-pictures.html" "here")). (I, a good Southern girl, found The Statue in poor taste.) So I asked him about The Statue, and he told me about this awesome project he had been working on with his friends at college. In those early days, I was a social butterfly who made friends with everyone, but especially cool people who were working on fascinating projects. Stephen and I hit it off! }

    @p{Fast forward to 2014: Stephen and I are attending different PhD programs at UC San Diego, where the CodeSpells research prototype had been conceived and tested in his graduate lab. In our spare time, we began dreaming of what CodeSpells could be in the future and formulated a plan. As Stephen worked with Adrian and Jason to put together the Kickstarter Prototype of CodeSpells, we also worked on prepping for the Kickstarter itself. This is where I truly got involved with the project! My job would be trying to get the backers we needed to make the CodeSpells dream a reality.}

    @p{I was highly involved throughout the Kickstarter, sending out press releases to websites like @(a href: "https://www.gamasutra.com/blogs/LindseyHandley/20140918/225984/Kickstarting_a_Coding_Education_Video_Game_in_a_PostquotCode_Heroquot_World.php" "Gamasutra"), @(a href: "https://www.cnet.com/news/codespells-write-code-invent-magic-spells/" "CNET"), and @(a href: "https://www.rockpapershotgun.com/2014/09/02/codespells-proof-that-coding-is-arcane-wizardry/" "Rock, Paper, Shotgun"), trying to make GIFs go viral on 9Gag and @(a href: "https://imgur.com/gallery/Uvgt5" "Imgur"), answering backer questions, posting updates on Kickstarter, managing the social media accounts, and just generally sharing the Kickstarter with anyone and everyone who might be interested in an awesome game that would let you code magic spells. The Kickstarter was a wild, exhilarating ride and ended up being a huge success!}

    @p{As the Kickstarter's funding campaign came to a close, I continued to promote the game via press releases and social media. I also helped the team share Kickstarter updates and distribute Kickstarter rewards.}

    @p{After the Kickstarter funding phase ended, I worked on CodeSpells on a very part-time basis (we wanted to use MOST of the funds on development and not marketing at this point). So my attention re-focused on putting the finishing touches on my dissertation at UCSD and developing a for-profit computer science education business that would become my full-time job after I finished my PhD program. Later, as development on the Kickstarter version of CodeSpells came to a close, my passion for computer science education grew. For several years, my work with ThoughtSTEM centered around starting new coding after-school programs and summer camps for local kiddos, with a secondary goal of trying to get more girls involved in computer science. I also helped promote a new educational software we built for teaching coding to kids through Minecraft called @(a href: "https://www.learntomod.com" "LearnToMod")! Within the last year we started a new nonprofit called MetaCoders that's currently teaching @(a href: "https://metacoders.org/coding-club.html" "online coding classes")  to kids via Zoom during COVID-19, and wrote a book about teaching and learning computer science called @(a href: "https://amzn.to/3aIBflN" @emph(Don't Teach Coding: Until You Read This Book)).}

    @(image-grid
        (cons img:lindsey-with-kid.jpg 
              @p{
              Teaching kids coding at a local STEM fair.})
        (cons img:lindsey-at-minecon.jpg 
              @p{
              Hanging out with an Enderdragon at Minecon while promoting LearnToMod.})
        (cons img:lindsey-stephen-professional.jpg 
              @p{
              Lindsey & Stephen, trying to be all professional for once.})
        (cons img:lindsey-at-workshop.jpg 
              @p{
              Working with some of our students in a coding workshop.})
        
        )
    
    @p{My work with ThoughtSTEM was full of excitement, but nothing quite lived up to the thrill of the CodeSpells Kickstarter, nor the sense of community I felt with the wizards who supported the game's development throughout the years. When COVID-19 hit, we noticed renewed conversation on the community Discord channel, and an idea crossed our minds... Stephen's blog post @(a href: "https://codespells.org/posts/the-codespells-story-part-2.html" "here") picks up that story.}

    @p{I'm excited to be back to serve the CodeSpells community! Over the next several months you'll find me:
      @li{Promoting the Patreon and trying to grow the community}
      @li{Creating screen recordings of the CodeSpells prototype throughout development}
      @li{Trying to get computer science educators involved in the CodeSpells community}
      @li{Being a liason between the Community and Stephen (our lead dev), so that he can focus on development}
      @li{Trying to hype up ice magic as much as possible without pissing off Stephen}
      @li{Interviewing community members about their experiences with CodeSpells and creating blog posts featuring them - DM me if you're interested!}
      @li{Posting on Social Media}
      @li{Writing and distributing press releases when the time comes}
      @li{Helping Stephen a bit on development with the semi-limited coding & art skills I do have}
      @li{Keeping a pulse on the CodeSpells community and doing whatever I need to do to make sure everybody is getting their needs met}
    }

    @p{I'm SO psyched to see what we can build together, y'all!}

    @p{Stay tuned for more!!}

    @p{- Lindsey D. Handley}
    @(logo 200)
  })
=======

;TODO: make this a legit package.
(require "../../lang.rkt")
(require "./lang.rkt")
(require website-js/components/accordion-cards)
(require (prefix-in h: 2htdp/image))

(define (my-rune image)
  (svg-rune-description
    (rune-background
      #:color "#FFA500"
      (rune-image image))))

(define c (h:circle 20 'solid 'red))

(define (grid image)
  (h:above
    (h:beside image image)
    (h:beside image image)))

(define (my-lang)
  (rune-lang 'my-lang
	     (list
	       (html-rune 'X 
			  (my-rune
			    (grid c)))
	       (html-rune 'Y
			  (my-rune
			    (grid 
			      (grid c))))
	       (html-rune 'Z
			  (my-rune
			    (grid
			      (grid 
				(grid c))))))))


(define-post 
  2020-08-19
  "Making Runes Pretty"
  @div{
    Design tension: Runes should look good, but be easy to produce.
  }
  @div{

    @p{Usually, things that look good take
    time.  And things that are quickly
    made look shabby.}

    @p{But I really want the best of
    both worlds here: CodeSpells community
    members (including me) should be
    able to quickly produce a Rune,
    but without having to boot up
    Photoshop or Illustrator.}
    
    @p{In my wizard tower yesterday, I wove
    a bit of magic to these ends.}

    @p{As you may recall, my hand-edited,
    slow runes looked like this:}

    @(typeset-runes-block
       crunchy-demo-lang
       (build small))

    @p{
    And the unfinished ones I showed in
    @a[href: "/posts/an-early-sneak-peek-at-rune-creation-tools.html"]{yesterday's post} 
    looked like this: }

    @(typeset-runes-block
       (parameterize
	 ([svg-filter crunchy])
	 (basic-lang))
       (build small))

    @p{And I said they were created with
    this code:}

    @code-block{
      (typeset-runes
	basic-lang
	(build small))
    }

    @p{As I was improving the look and feel, I decided that @i{someone} out there
    might want Runes that look more cartoony.  Who am I to judge?  So I decided that @tt{basic-lang} ought to be a function (not a constant), so that it can take parameters.
    This will allow bindings from identifiers (like @tt{build} and @tt{small}) to HTML widgets like 
    @(typeset-rune-inline 
       (parameterize
	 ([svg-filter crunchy])
	 (basic-lang))
       build) and 
    @(typeset-rune-inline 
       (parameterize
	 ([svg-filter crunchy])
	 (basic-lang))
       small)
     to be more easily re-skinned, without having to redefine every single rune.}

    @p{Case in point: This code...}

    @code-block{
      (typeset-runes
	(basic-lang) ;Note the new parens
	(build small))
    }

    @p{...now produces...}

    @(typeset-runes-block
       (basic-lang)
       (build small))

    @p{Not only does it look "crunchier" and less cartoony, you can also get the old one back like this:}

    @(typeset-runes-block
       (parameterize
	 ([svg-filter crunchy])
	 (basic-lang))
       (build small))

    @p{I've provided a few different filters (like the default @tt{crunchier} and the @tt{crunchy} one used above).
    Such filters can be used to alter all of the id-to-Rune bindings in a language.  This is an easy way to make Runes fit with the aesthetic of a @(authored-work) without having to redraw them all.  Hopefully, this will facilitate the sharing of Runes across different worlds in the @(canon).}

    @p{A few more examples:}

    @code-block{
    (typeset-runes-block
       (parameterize
	 ([svg-filter blurry])
	 (basic-lang))
       (build small))}

    @p{Gives:}

    @(typeset-runes-block
       (parameterize
	 ([svg-filter blurry])
	 (basic-lang))
       (build small))

    @p{And:}

    @code-block{
    (typeset-runes-block
       (parameterize
	 ([svg-filter van-gogh])
	 (basic-lang))
       (build small))
    }

    @p{Gives:}

    @(typeset-runes-block
       (parameterize
	 ([svg-filter van-gogh])
	 (basic-lang))
       (build small))

    @p{You can even mix and match 
    if you want to have different Runes
    with different
    aesthetics (perhaps to signify
		        that they
			have different
			semantics or 
			different lore).
    Suppose @tt{(my-lang)} has a binding
    for the id @tt{X}, whereas @tt{(basic-lang)} has bindings for @tt{build}, @tt{small}, and @tt{define}.  You can easily combine them 
    into your own new language, applying
    filters as necessary.}

    @code-block{

    (define combined-lang
      (append-rune-langs 
       (parameterize
	 ([svg-filter blurry])
	 (basic-lang))
	(my-lang)))

    (typeset-runes-block
      combined-lang
      (define X
	(build small)))
    }

    @(let ()
       (define combined-lang
	 (append-rune-langs 
	   (parameterize
	     ([svg-filter van-gogh])
	     (basic-lang))
	   (my-lang)))

       (typeset-runes-block
	 combined-lang
	 (define X
	   (build small))))

    @p{
      And now the Rune for @tt{X} uses the
      default @tt{crunchier} filter amidst
      the rest of the Runes that use the 
      @tt{van-gogh} filter.
    }

    @p{Oh!  And filters can do anything an SVG @tt{<filter/>} element can do.  So you can define your own too.  Those interested in doing so are welcome to track down how I did it in @(github:codespells-runes).}

    @p{
      But that's enough about filters.  Let's talk about where the Rune for @tt{X} came from -- and how Rune widgets are defined in the first place.  
    }

    @h3{Creating new Runes}

    @p{To ease the definition of new runes, I've added support for
    one of @a[href: "https://docs.racket-lang.org/teachpack/2htdpimage.html"]{my favorite functional image libraries}.  I've used this one for years to teach coding to kids as
    young as 5; and I've used it myself in production systems.  It was a
    natural choice for Rune definitions.}

    @p{It lets you do simple things like:}

    @code-block{
    (circle 20 'solid 'red)
    }

    @p{Which would produce a simple red circle:}

    @(write-image (h:circle 20 'solid 'red)) 
    @(br)
    @(br)

    @p{Or, you can position images relative to other images,
    which returns a new image:}

    @code-block{
    (define c (circle 20 'solid 'red))
    (beside c c)
    }

    @p{Giving:}

    @(write-image 
       (let ()
	 (define c (h:circle 20 'solid 'red))
	 (h:beside c c))) 
    @(br)
    @(br)

    @p{Or, you can write functions that take and return images: }

    @code-block{
    (define c (circle 20 'solid 'red))

    (define (grid image)
      (above
	(beside image image)
	(beside image image)))

    (grid c)
    }

    @p{Giving:}

    @(write-image 
       (let ()
	 (define c (h:circle 20 'solid 'red))

	 (define (grid image)
	   (h:above
	     (h:beside image image)
	     (h:beside image image)))

	 (grid c))) 
    @(br)
    @(br)

    @p{Let's use the above tricks to define a Rune language.}

    @code-block{
    (define (my-lang)
      (rune-lang 'my-lang
		 (list
		   (html-rune 'X 
			      (my-rune
				(grid c)))
		   (html-rune 'Y
			      (my-rune
				(grid 
				  (grid c))))
		   (html-rune 'Z
			      (my-rune
				(grid
				  (grid 
				    (grid c))))))))}

   @p{Now we combine this lang with (basic-lang) so we can
      reuse Rune definitions for open and close parentheses.
    And we typeset the expression (X Y Z):}

    @code-block{
   (typeset-runes-block
       (append-rune-langs
	 (basic-lang)
	 (my-lang))
       (X Y Z))
    }


    @(let ()
       (define (my-lang)
	 (rune-lang 'my-lang
		    (list
		      (html-rune 'X 
				 (my-rune
				   (grid c)))
		      (html-rune 'Y
				 (my-rune
				   (grid 
				     (grid c))))
		      (html-rune 'Z
				 (my-rune
				   (grid
				     (grid 
				       (grid c)))))
		      )))
       (typeset-runes-block
	 (append-rune-langs
	   (basic-lang)
	   (my-lang))
	 (X Y Z)))

    @(br)
    @(br)

    @p{That expression, though, woudn't actually run.  The variables @tt{X}, @tt{Y}, and @tt{Z} all have Rune definitions, but that doesn't mean they have any meaning.  Just an appearance.  The following, however, @i{would} actually run in-game.  Can you figure out what it's equivalent to?}


       @(typeset-runes-block
	  (append-rune-langs
	    (basic-lang)
	    (my-lang))
	  (define X small))

       @(typeset-runes-block
	  (append-rune-langs
	    (basic-lang)
	    (my-lang))
	  (define (Z Y)
	    (build Y)))

       @(typeset-runes-block
	  (append-rune-langs
	    (basic-lang)
	    (my-lang))
	  (Z X))

       @(br)
       @(br)

       @(accordion-card
	  #:header "Click to see answer"

	  @p{Here's the text-based code that I typeset.}
	  @code-block{
	  (define X small)
	  (define (Z Y)
	    (build Y)) 
	  (Z X)
	  }

	  @p{And the expresssion @tt{(Z X)} at the end is equivalent to @tt{(build small)}.
	  Note that the @tt{Y} Rune is used as a parameter in the @tt{Z} function} )

       @(br)


       @p{In @a[href: "/posts/an-early-sneak-peek-at-rune-creation-tools.html"]{the last post}, I mentioned a key technical challenge in Rune-based coding: user-defined variables}

       @p{With the above, we are a bit closer to solving the problem.  There is -- at 
       least in the modding language -- a way to create the look and feel
       for new Runes, and to make collections out of them.  
       And those Runes can be typeset alongside Runes 
       from other collections, like @tt{(basic-lang)}.}

       @p{But as it stands, you'd need to have Runes for all the variables you're
       going to use in writing a spell -- equivalent to having to pre-define
       all of your variable names before writing a program.  Annoying to say the least.
       }

       @side-note{
       @h5{(short term vs long term)}
       @(hr)
       @p{I @i{might} actually resort to the above in the short term if I feel I've been
       spending too much time on Runes and the spellcrafting experience.  I miss
       voxels.  More importantly, I want to be able to show the community some 
       of the cool in-game stuff, I've been working on.}
       @p{It's not the worst from a gamification point of view either.
       One could imagine that, as players progress through the 3D world, they
       accumulate a collection of "Unbound Runes" -- ones
       they are free to use in any spell as variables.  The more you have, the
       more variables you can have in a program.}
       @p{Community members could also create and share Unbound Runes.  They
       could have silly textual names, like @tt{amulgagars-weird-rune-number-97},
       and players would select whichever Rune's image seems to match whatever semantic
       task the variable is intended to perform.}
       @p{But for the record: Eventually, no matter what, I want user-defined variable Runes to be creatable
       @i{while} you're writing a spell.  I need this for my own sanity.}
       }

       @p{Now that the basics of Rune creation and typesetting is done, 
       I'm going to be working on the spell writing experience
       for the rest of the week -- you know, dragging Runes around on a canvas to
       construct spells.  I'll also be exploring a solution
       to the user-defined variables problem.  My general plan is to have
       a meta-Rune that, when clicked, gives you an interface for designing
       a new Rune (or picking from a list of previously designed ones).
       The new Rune would then be available in your program.  For bonus points,
       I'll try to make it available in places where the variable would actually 
       be in scope.  We'll see!}

       @p{But rest assured, I don't want to get blocked on a technical challenge
       like this one for too long (especially since there is a short-term solution).  
       So if I can't get it quite right in the mean time or if I feel it's delaying 
       other milestones, I'll table it for later and come back to it.}

       @p{- Stephen R. Foster}
       @(logo 200)
       })



>>>>>>> acde2ac1c9cf1da7381360bb0d8527605f054671
