#lang racket

(provide (all-from-out codespells/lore)
	 define-works-cards
	 define-rune-collection-cards-and-pages )
(require codespells/lore
	 "../../lang.rkt"
	 syntax/parse/define
	 (for-syntax racket/syntax
		     racket/format))

;Just put stuff here that is for interfacing
;  with codespells/lore but specifically for 
;  constructing this site


;Change "build"
(define (require+add-image!+build->build-card authored-work-name)
  (define lore (dynamic-require-lore authored-work-name))
  (let ()
    ;The lack of symetry between these is ugly.
    ;  Only one takes the work name
    (add-image! 
      (authored-work-lore->preview-image/page 
	(list "builds" 
	      (~a authored-work-name) 
	      "preview.png")
	lore))
    (authored-work-lore->authored-work-card 
      authored-work-name
      lore)))

(define (require+create-page authored-work-name)
  (define lore (dynamic-require-lore authored-work-name))
  (define wrapper (lambda (c) (normal-content
				(codespells-navbar)
				c)))
  (let ()
    (rune-collection-lore->rune-collection/page
      (list "collections" (~a authored-work-name) "index.html")
      lore
      wrapper)))

(define-syntax (define-works-cards stx)
  (syntax-parse stx
		[(_ (work-cards-var-name) (work-name ...))
		 #'(begin
		     (define (work-cards-var-name)
		       (list
			 (require+add-image!+build->build-card 'work-name)
			 
			 ...)))
		 ]))

(define-syntax (define-rune-collection-cards-and-pages stx)
  (syntax-parse stx
		[(_ (rune-collection-cards rune-collection-pages) 
		    (rune-collection-name ...))
		 #'(begin
		     (define (rune-collection-cards)
		       (map
			 rune-collection-name->preview-card
			 (list
			   'rune-collection-name
			   ...)))
		     (define (rune-collection-pages)
		       (list
			 (require+create-page 'rune-collection-name)
			 ...))
		     ) ]))



