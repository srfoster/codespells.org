#lang at-exp racket

(require gregor)

(define target-dir
  (build-path (current-directory)
	      "pages"
	      "blog"))

(define (today)
  (~t (now/moment) "YYYY-MM-dd"))

(define new-post-name 
  (~a "post-" (today) ".rkt"))

(define starter-content
  @~a{

  #lang at-exp racket

  (require "../../lang.rkt")
  (require "./lang.rkt")

  (define-post 
    @(today)
    "New post!"
    @"@"div{
    Summary
    }
    @"@"div{
    Content

    @"@"p{- Stephen R. Foster}
    @"@"(logo 200)
    })
  })

(with-output-to-file
  (build-path target-dir new-post-name)
  (thunk*
    (displayln starter-content)))

(system (~a "vim " 
	    (build-path target-dir new-post-name)))
