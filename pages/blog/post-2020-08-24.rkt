#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")
(require website-js/components/accordion-cards
	 website-js)

(define-syntax-rule (toolbar-editor elements ...)
  (enclose
    (div id: (id 'id)
	 elements ...)
    (script ())))

(define (rune-adder rune-id)
  (define r (id->html (basic-lang) rune-id))
  
  (define parent (id 'id))

  (enclose
    (span 
      on-click: (call 'add)
      r)
    (script ()
	    (function (add)
		      @js{
		        var parent = document.querySelector(@(~j "#~a .runeContainer" parent))

			@(call-method 'parent 'addRune 
				      (~s rune-id)
				      (html->js-injector r)) }))))

(define-post 
  2020-08-24
  "Writing Rune Programs"
  @div{
  Adding Runes to Rune surfaces.
  }
  @div{
  @(js-runtime)

  @p{Today, in my wizard tower, I began forging a framework 
     for creating Rune editors.  It's in the early stages, but here
     are some interactive demos to get the idea across.}

  @p{Here's an editor where you can add just two identifiers 
  to the Rune surface (by clicking their images above the surface).
  You can remove them by right clicking.}

 @(toolbar-editor
       (rune-adder 'build)  
       (rune-adder 'small)  
       (demo-editor 
	 (basic-lang)))

 @(br)
 @(br)


  @p{Of course, Runes aren't very useful without parentheses.  So here's an
  editor that lets you add those.  You remove them too by right clicking.}

  @(toolbar-editor
     (rune-adder '|(|)  
		 (rune-adder '|)|)  
     (rune-adder 'build)  
     (rune-adder 'small)  
     (demo-editor 
       (basic-lang)))

 @(br)
 @(br)

  @side-note{
  @h5{(parentheses)}
  @(hr)
  @p{In the words of Alan Kay: @i{Lisp isn't a language; It's a building material.}}
  @p{I fully agree.  However, one thing that makes building with Lispy materials much more
  pleasant is having parenthesis-aware editing tools.  This true for text-based
  coding as well as Rune-based coding.}
  @p{Some minimal features I'll be needing for my own sanity:}
  @ul{
    @li{Add an open paren and get a matching close paren for free.}
    @li{Highlight an open paren and the close paren also gets highlighted}
    @li{Be able to do "structured editing": cut everything between two parens,
    highlight everything between two parens, drag everything that's highlighted, etc.}
  }
  }

  @p{And finally, just so you know, I won't be employing a "toolbar" paradigm
  like you see in these demos.  The toolbar gets more and more unweildy
  the more identifiers there are in a language.  Plus, clicking on an image
  in the toolbar doesn't let you specify where you actually want the Rune to go.}

  @p{For those of you who want to experience some of these UI frustrations for
  yourselves, try writing a simple program with the below editor. For example,
  try writing this:}

  @code-block{
    (define C
      (if (and #t #f)
	  (build A)
	  (build B)))
  }

  @p{Make a mental note of everything that annoys you.  Now you know what I'll
  be working on in the coming days :)}

  @(toolbar-editor
     (map rune-adder 
	  (rune-lang-ids (basic-lang)))
     (demo-editor 
       (basic-lang)))

  @(br)

  @p{My hope is to have a passable Rune-editing experience 
  by the end of the week.  It doesn't have to be perfect -- just passable.  
  That way, I can pull these interfaces into Unreal 
  and write some real spells!  }

  @p{- Stephen R. Foster}
  @(logo 200)
  })



