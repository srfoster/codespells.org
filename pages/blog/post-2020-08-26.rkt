#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")
(require 
  website-js/components/accordion-cards
  website-js
  (prefix-in html:
	     (only-in website
		      script))
  (prefix-in h:
	     2htdp/image))

(require codespells-runes/editor)

(define (temp-lang)
  (append-rune-langs
    (rune-lang 'temp-lang
	       (parameterize ([rune-width 100])
		 (list
		   (html-rune 'editor:sub
			      (editor-rune
				(svg-rune-description
				  (rune-background
				    #:color "black"
				    (rune-image 
				      (h:circle 20 'solid 'transparent)
				      ))))))))
    (basic-lang)))

(define-post 
  2020-08-26
  "Rune Widgets"
  @div{

  Introducing this innocent-looking rune: @(typeset-rune-inline (temp-lang) editor:sub)
  }
  @div{

  @p{Today, I'll be introducing this rune: @(typeset-rune-inline (temp-lang) editor:sub)}

  @p{It's the first Rune widget I've built.  And I'm calling it the @b{Sub-Spell Rune Widget}.  
  This Rune lets you store an entire sub spell inside it.  This is a powerful thing -- 
  much like "code folding", which many modern text editors support.}

  @p{This "folding" ability is even more necessary in Rune-based editing than in text editing.
  Runes (like Blockly blocks or Blueprint nodes, or any kind of graphical syntax really)
  take up more real estate than text.  Sub-spell Runes
  let you pack more Runes into a small amount of space.
  And because you can nest sub-spell Runes arbitrarily deeply, you
  can pack like crazy.}

  @p{Before we get to the demo, for those wondering, Rune widgets, in general, are defined as follows:}

  @side-note{
  @(h5 "(rune widgets are ...)")
  @(hr)
  @p{Any Runes that, when clicked, display additional UI that, when edited,
  changes either 1) the Rune's physical appearance and/or 2) the Rune's compilation value. Often, both will change.}
}

@p{You can test this definition on the Rune above.  When you click it, you'll find yourself looking
at a Rune editor.  When you add Runes to the editor and click the @(button-primary "Close") button
in the top left, the originally clicked Rune will contain a tiny preview of the Runes you added to the editor.}

@p{For additional fun: Try adding a Sub-Spell Rune or two to an editor like this one.  How deeply can you 
nest sub-spells?  How many sub-spells can you have in one spell?  Try it!}

@(html:script
   src:
   "https://cdn.jsdelivr.net/npm/interactjs/dist/interact.min.js")

@(editor-factory
   (rune-selector
     (rune-injector (temp-lang)
		    (parameterize ([rune-surface-height "90vh"])
		      (demo-editor
			(temp-lang))))))

@(;identity  
  rune-selector
  (rune-injector (temp-lang) 
		 (demo-editor
		   (temp-lang))))

@(br)
@(br)

@p{With these Sub-Spell Runes implemented, I feel confident that other Rune widgets for simpler things
(like String Runes or Number Runes) will be easy enough.}

@p{This gives me confidence to begin pulling the editors I built this week into
Unreal.  The UI isn't complete -- but it is built for growth -- which (I would argue) is better.  This lets me continue growing
the UI in the context of writing actual spells.  At the end of the day, CodeSpells is as much about casting spells as it is about writing them.  It's time to merge the writing experience and the casting experience (back) together.  Hoping to demo this by Friday!}

@p{- Stephen R. Foster}
@(logo 200)
})



