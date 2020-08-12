#lang racket

(provide images)

(require webapp/js 
	 racket/runtime-path
	 syntax/parse/define
	 (for-syntax racket
		     racket/syntax
		     racket/runtime-path))

(define-syntax (define-image stx)
  (syntax-parse stx
		#:disable-colon-notation
		[(_ group id)
		 #:with image/id (format-id stx "images/~a" #'id)
		 #:with path:image/id (format-id stx "path:images/~a" #'id)
		 #:with img:id (format-id stx "img:~a" #'id)
		 #`(begin

		     (define-runtime-path id (~a "images/" 'id))
		     (define image/id (page image/id id))
		     (define path:image/id (prefix/pathify (~a "images/" 'id)))
		     (provide id image/id path:image/id)
		     (define/provide-extensible-element img:id
							img
							(src: path:image/id (lambda (a b) a)))
		     (set! group (cons image/id group)))]))

(define images '())

(define-image images logo.png)
(define-image images CodingDemo1.png)
(define-image images ThroughGrass.png)
(define-image images AtCliff.png)
(define-image images EarthBall.png)
(define-image images village.jpg)
(define-image images cottage-close-up.jpg)
(define-image images fish-on-a-mountain.jpg)
(define-image images penis1.jpg)
(define-image images penis2.jpg)
(define-image images penis3.jpg)
(define-image images penis4.jpg)

(define-image images gnome-village.png)
(define-image images gnome-red.png)
(define-image images gnome-injured.jpg)
(define-image images gnome-water.jpg)
(define-image images old-spellbook.jpeg)


(define-image images air-wizard.jpg)
(define-image images big-creatures.jpg)
(define-image images cool-arch.png)
(define-image images dust-mote.png)
(define-image images night-time-wizard.png)
(define-image images three-wizards.png)
(define-image images wizard-with-croaker.png)
(define-image images wolf-crows.png)


(define-image images in-game1.jpg)
(define-image images in-game2.jpg)
(define-image images in-game3.jpg)
(define-image images in-game4.jpg)
(define-image images in-game5.webp)

(define-image images in-game-coding1.jpg)
(define-image images in-game-coding2.gif)

(define-image images noun_quill.svg)
(define-image images noun_Book.svg)
(define-image images noun_Library.svg)

(define-image images star-wars-novels.jpg)
(define-image images apple-pie.jpg)
