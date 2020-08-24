#lang racket

;This file (and RuneImages) should maybe get factored into a codespells-the-seeker package

(provide 
  old-rune-images
  the-seeker-lang)

(require codespells-runes
	 website)

(define (svg-rune id)
  (image-binding
    id
    (build-path "RuneImages"
		(~a id ".svg"))))

(define the-seeker-lang
  (basic-lang))

(define old-rune-images
  (list
    (page RuneImages/build.svg
	  (build-path "RuneImages" "build.svg"))
    (page RuneImages/small.svg
	  (build-path "RuneImages" "small.svg"))
    (page RuneImages/medium.svg
	  (build-path "RuneImages" "medium.svg"))
    (page RuneImages/large.svg
	  (build-path "RuneImages" "large.svg"))
    (page RuneImages/OPEN-PAREN.svg
	  (build-path "RuneImages" "OPEN-PAREN.svg"))
    (page RuneImages/CLOSE-PAREN.svg
	  (build-path "RuneImages" "CLOSE-PAREN.svg"))
    ))


