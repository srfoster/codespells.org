#lang at-exp racket


(require "../../lang.rkt")
(require "./lang.rkt")

(define-post
  2020-11-03
  "Build page"
  @div{
  You may have noticed, there's a new link in the nav bar...
  }
  @md{

  Or, you can use this link: @(link-to-builds). 

  There's not much there yet, but that's what I'm working on this week -- builds!  

  @p{- Stephen R. Foster}
  @(logo 200)
  })
