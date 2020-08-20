#lang at-exp racket


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



