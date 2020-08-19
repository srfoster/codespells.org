#lang at-exp racket


;TODO: make this a legit package.
(require "../../lang.rkt")
(require "./lang.rkt")

(require codespells-runes)

(define-post 
  2020-08-13
  "Voxels and Runes!"
  @div{
    All @(authored-works) can have voxels and novel programming languages; the @(authoring-tools) make this easy.
  }
  @div{
    @p{I've written a lot of long posts recently.  Let's do a short one.  
    These three quick videos show the main character in @(the-seeker) traversing 
    the voxel world and deforming it with spells:}

    @(image-grid
       (cons
	video:build-sphere-demo3.webm
	"Just a standin' and a jumpin'")

       (cons
	 video:build-sphere-demo.webm
	 "Just a castin' and a runnin'")

       (cons
	 video:build-sphere-demo2.webm
	 "Just a rollin' and a rollin'"))

    @p{Things to note:}

    @ul{
      @li{Worlds are huge.  I'm not faking that it stretches out as far as the eye can see.}
      @li{The 3rd-person avatar has jump and roll capabilities.}
      @li{Voxels are what allow for the cliffs and overhangs you see.}
      @li{The spell being cast adds a sphere to the voxel terrain and is written in a programming language I'm designing to fit with the lore in @(the-seeker).}
    }

    @p{Here's the source code for the spell shown in the videos.}

    @(div
       style: (properties
		width: "100%"
		height: 120 
		position: "relative")
       (typeset-runes the-seeker-lang
		      (build small)))

    @p{Stay tuned for details about this "rune-based programming paradigm" and how the @(authoring-tools) will help authors add such languages to their own @(authored-works), creating a polyglottic multiverse within the @(canon).}

    @p{- Stephen R. Foster}
    @(logo 200)
  })
