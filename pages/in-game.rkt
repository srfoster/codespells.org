#lang at-exp racket

(require "index.rkt"
         "../lang.rkt" 
         "blog/posts.rkt"
         "blog/lang.rkt"
         )

(define (in-game.html) 
  (page in-game.html
    (index.html-content)))

(module+ main
	 (render #:to "out" 
		 (in-game.html)))

