#lang at-exp racket

(require "./lang.rkt")

(define-post 
  2020-08-10
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

  @p{- Stephen R. Foster}
  @(logo 200)
  })
