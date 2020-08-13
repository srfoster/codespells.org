#lang racket

;This file (and RuneImages) should maybe get factored into a codespells-the-seeker package

(provide 
  the-seeker-lang
  rune-images)

(require codespells-runes)

(define (svg-rune id)
  (image-binding
    id
    (build-path "RuneImages"
		(~a id ".svg"))))

(define the-seeker-lang
  (rune-lang 'the-seeker-lang
	     (list
	       (svg-rune 'build)
	       (svg-rune 'small))))

(define rune-images (images-for the-seeker-lang))
