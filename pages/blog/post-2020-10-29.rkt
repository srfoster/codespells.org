
#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")

(define-post
  2020-10-29
  "Arena World"
  @div{
  Sneek peek at one of the worlds we're packaging as a CodeSpells world. 
  }
  @div{

  @(yt "cDC6QakRUcw")

  @(hr)

  @p{If you've done the installation as shown at @(github:codespells), you can preview this world now by using:}

  @code-block{
    (once-upon-a-time
      #:world (arena-world) 
      #:aether (demo-aether))
  }

  @p{- Stephen R. Foster}
  @(logo 200)
  })
