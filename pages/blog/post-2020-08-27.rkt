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
  2020-08-27
  "Rune evaluation"
  @div{
  It's video time!
  }
  @div{

  @p{Today I added a back-end evaluator
  to the Rune editors I've been working on this week.}

  @p{I also released @(github:codespells-server).  This is the second major piece of the @(authoring-tools):}

  @ul{
    @li{@(github:codespells-runes) - Tools for helping people define Runes, Rune languages, and Rune editors that can be embeded in their @(authored-works)}
    @li{@(github:codespells-server) - Tools for defining CodeSpells UI servers.  Such servers provide user interfaces (including, but not limited to Rune editors) that can be overlayed on the 3D world of @(authored-works).  Mainly, I'll be using this in @(the-seeker) to provide Rune editors that actually evaluate your Rune code.} 
  }

  @p{Here's a demo of me showing off the evaluation -- not yet inside of the 3D world.  But still, I think it's cool:}

  @(video 'controls: #t
     (source width: "100%" 
       src: "/videos/evaluation-demo.webm"
       type: "video/webm"
       ))

  @p{- Stephen R. Foster}
  @(logo 200)
  })



