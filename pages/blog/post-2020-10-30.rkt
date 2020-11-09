
#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")

(define-post
  2020-10-30
  "Cave World"
  @div{
  Sneek peek at ANOTHER world we're packaging as a CodeSpells world. 
  }
  @div{

  @(yt "mkyyZ87tEwE")

  @(hr)

  @p{If you've done the installation as shown at @(github:codespells), you can preview this world now by using:}

  @code-block{
    (once-upon-a-time
      #:world (cave-world) 
      #:aether (demo-aether))
  }

  @p{Starting next week, I think I'm ready to start releasing builds of these
  worlds -- so you don't have to go through the installation process with Racket
  first.  I think I can get the compiled Racket executable and the compiled Unreal 
  executable to be zipped up in one nice folder for easy installation.}

  @p{- Stephen R. Foster}
  @(logo 200)
  })
