#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")
(require website-js/components/accordion-cards
	 website-js
	 codespells-runes/editor)

(provide rune-adder
	 rune-injector
	 rune-selector)

(define-syntax-rule (toolbar-editor elements ...)
  (enclose
    (div id: (id 'id)
	 elements ...)
    (script ())))

(define-post 
  2020-08-25
  "Writing Rune Programs Part 2"
  @div{
  Adding Runes to Rune surfaces (better).
  }
  @div{

  @p{In the last post, I showed a proof of concept that you could add runes to a surface.
  For those who are interested: here's basically what I did.}

  @code-block{
   (enclose
      (div id: (id 'id)
	(rune-adder (id 'id) (basic-lang) '|(|)
        (demo-editor
	  (basic-lang)))
      (script ()))
  }

  @p{I won't go into the code in detail except to note the use of @tt{rune-adder} component, which produces the button that adds the Rune onto the surface (which I produced with the @tt{demo-editor} component). The code produces the following simple editor where you can only add parentheses.
  (Note: I did, since yesterday, make it so that adding an open parenthesis automatically
	     adds a close parenthesis.)}

   @(enclose
      (div id: (id 'id)
	(rune-adder (id 'id) (basic-lang) '|(|)
        (demo-editor
	  (basic-lang)))
      (script ()))
    @(br)
    @(br)

  @p{But the trouble, as I mentioned in the previous post, is that having buttons above
  (or alongside) the editor takes up space.  And the amount of space increases the
  more identifiers there are in the language.  Also, clicking a button doesn't say
  @i{where} you want the Rune.  It just says @i{that} you want a Rune. 
  To solve this problem, I made a component called @tt{rune-injector}, which 
  takes a language (like @tt{(basic-lang)}) and maintains a hidden toolbar of 
  the language's Runes.}

  @p{I invoke it as follows.  Notice that the Rune injector component takes a language,
  as does the editor component.  They happen to be the same here -- but they don't 
  have to be: if you only want your user to be able to inject a subset of the Runes
  that the surface can theoretically handle:}

  @code-block{
  (rune-injector
    (basic-lang)
    (demo-editor 
      (basic-lang)))
  }

  @p{Here's the result.  Try double clicking and adding runes! Right clicking deletes a Rune.
  And right clicking on the Rune injector component hides it again.}

  @(rune-injector
      (basic-lang)
      (demo-editor 
	(basic-lang)))
    @(br)
    @(br)

  @p{One must-have for me is the ability to move multiple Runes at once.  For that 
  functionality, I (once again) encapsulated the desired behavior in a different component.
  I called this one @tt{rune-selector}.  
  To add these new selection capabilities to a Rune surface, you simply wrap it in a @tt{rune-selector}}

 @code-block{
 (rune-selector
   (rune-injector
     (basic-lang)
     (demo-editor 
       (basic-lang))))}


 @p{Try it!  Add a few Runes just as you did above.  But now...  Clicking a Rune selects it.  Shift-clicking a Rune selects an additional Rune.
 Dragging on the canvas moves all selected Runes.}

 @(rune-selector
    (rune-injector
      (basic-lang)
      (demo-editor 
	(basic-lang))))
    @(br)
    @(br)

 @p{Although it's still far from complete, you can probably see what I'm trying to 
 do here: create composable building-blocks for building Rune-based coding editors.
 If, for example, you want selection capabilities without injection capabilities,
 you could probably figure out how to do it just from what I've said so far.}

 @p{Here's what you'd do:}
 
 @code-block{
 (rune-selector
    (enclose
      (div id: (id 'id)
	   (rune-adder (id 'id) (basic-lang) '|(|)
		       (demo-editor
			 (basic-lang)))
	   (script ())))}

 @p{And here's the user experience you would get:}

 @(rune-selector
    (enclose
      (div id: (id 'id)
	   (rune-adder (id 'id) (basic-lang) '|(|)
		       (demo-editor
			 (basic-lang)))
	   (script ())))

    @(br)
    @(br)


  @p{In my opinion, the best user interfaces are the ones that have been iteratively refined
  over time.  So I'm trying to isolate my UI decisions in different
  components -- so that different wizards can configure their editing experiences differently.
  This is so that we as a community can collectively work to create the Ultimate Rune-based Editing Experience.
  If people have a vision for how to inject or select Runes, I want them to be able to easily
  prototype these UI ideas and package them up for other wizards to try.}

  @p{Next steps: A framework for Rune widgets!  Rune widgets are Runes that, when clicked, do something interesting.
  I'll be using such widgets for various things: user-defined variables, string Runes, number Runes, etc.
  A Rune widget can even encapsulate an entire sub-program -- so that what looks like a single Rune actually has many Runes inside.
  This is where (in my opinion) the advantages of Rune-based coding over other visual programming language paradigms
  will begin to become clear.  We shall see.}

  @p{Oh, and I'm still on track for incorporating these new editors into the 3D experience this week.  Hoping to shoot
  some video of real spells soon!}

  @p{- Stephen R. Foster}
  @(logo 200)
  })



