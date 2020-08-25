#lang at-exp racket


;TODO: make this a legit package.
(require "../../lang.rkt")
(require "./lang.rkt")
(require website-js/components/accordion-cards)

(define c (h:circle 20 'solid 'red))


(define-post 
  2020-08-21
  "Editing Rune Programs"
  @div{
  We have Runes.  Now we gotta be able to write with them.
  }
  @div{

  @p{Recently, we've discussed how to create new Runes, how to add them to
  existing Rune languages, and how to typeset programs that combine
  Runes from different languages -- i.e.:}

  @(typeset-runes-block
     (append-rune-langs
       (my-lang)
       (basic-lang))
     (define X
       (Y Z)))

  @(br)

  @p{Today and yesterday evening, I spent some time in my wizard
  tower forging surfaces upon which wizards can arrange Runes.
  I have an interactive prototype working.}

  @p{Below, if you drag around the runes on the left, you 
  should see the compiled code update on the right 
  (though I can't promise it'll work on all browsers, all screen sizes, all devices).}

  @(demo-editor 
     (basic-lang)
     #'(build small))
  @(br)

  @p{And of course, we may want to have multiple Rune surfaces on
  a single page (of documentation, of a spellbook, of lore, of an in-game popup, etc.),
  so it's important that surfaces don't affect each other.}

  @p{Here's another one, just to test that we can do it.}

  @(demo-editor 
     (basic-lang)
     #'(define C
	 (build small)))
  @(br)

  @p{For those curious about how you would code something like the above
  in a @(authored-work), here's the gist:}

  @code-block{
  (demo-editor 
    (basic-lang)
    #'(define C
	(build small)))
  }

  @p{And the same ideas we've seen in past posts apply: If you create
  new Runes, you can put them on surfaces with ease.  If 
  we have variables @tt{X} (@(typeset-rune-inline (my-lang) X)), 
  @tt{Y} (@(typeset-rune-inline (my-lang) Y)), and @tt{Z} (@(typeset-rune-inline (my-lang) Z)) defined in @tt{(my-lang)}, we can create a surface as follows:}

  @code-block{
  (demo-editor 
     (append-rune-langs
       (my-lang)
       (basic-lang))
    #'(X Y Z))
  }

  @(demo-editor 
     (append-rune-langs
       (my-lang)
       (basic-lang))
     #'(X Y Z))

  @(br)

  @p{Now, to solve various other problems: 
     @ul{
       @li{How does the user put new Runes onto the surface?} 
       @li{How to implement Rune widgets: i.e. for user-defined variables and other things?}
       @li{Speaking of widgets: Can one Rune pop up a new Rune surface widget containing a sub program?  And could that subprogram be compiled into the parent program?}}}

  @p{I think I know the answers to these questions, but I have to build stuff to be sure.}

  @p{@i{Talk is cheap.  Show me the code. ~Linus Torvolds}}

  @p{- Stephen R. Foster}
  @(logo 200)
  })



