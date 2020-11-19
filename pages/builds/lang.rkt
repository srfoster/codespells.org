#lang racket

;Just put stuff here that is for interfacing
;  with codespells/lore but specifically for 
;  constructing this site
;If it's related to the display of lore in general, ;  it should go in codespells/lore


(provide (all-from-out codespells/lore)
	 define-works-cards
	 define-patron-only-works-cards
	 define-rune-collection-cards-and-pages )

(require codespells/lore
	 "../../lang.rkt"
	 syntax/parse/define
	 (for-syntax racket/syntax
		     racket/format))

(define-syntax (define-works-cards stx)
  (syntax-parse stx
		[(_ (work-cards-var-name) (work-name ...))
		 #'(begin
		     (define (work-cards-var-name)
		       (list
			 (require+add-image!+authored-work->authored-work-card #:download-section (download-button 'work-name) 'work-name)
			 
			 ...)))
		 ]))

(define-syntax (define-patron-only-works-cards stx)
  (syntax-parse stx
		[(_ (work-cards-var-name) (work-name ...))
		 #'(begin
		     (define (work-cards-var-name)
		       (list
			 (require+add-image!+authored-work->authored-work-card #:download-section (link-to-patreon) 'work-name)
			 
			 ...)))
		 ]))

(define-syntax (define-rune-collection-cards-and-pages stx)
  (syntax-parse stx
		[(_ (rune-collection-cards rune-collection-pages) 
		    (rune-collection-name ...))
		 #'(begin
		     (define (rune-collection-cards)
                       (list
                         (require+add-image!+rune-collection->rune-collection-card 'rune-collection-name)
                         ...))
		     (define (rune-collection-pages)
		       (list
			 (require+create-page 'rune-collection-name)
			 ...))
		     ) ]))

(define (require+add-image!+rune-collection->rune-collection-card collection-name)
  (define lore (dynamic-require-lore collection-name))

  (define code-demo-media 
    (with-handlers ([exn:fail? (thunk* #f)])
		   (dynamic-require  
		     (string->symbol
		       (~a collection-name "/lore")) 
		     'media)))

  (when code-demo-media
    (map add-image! code-demo-media))

  (rune-collection-name->rune-collection-card 
    collection-name)
  )

(define (require+add-image!+authored-work->authored-work-card authored-work-name
                                                              #:download-section download-section
                                                              )
  (define lore (dynamic-require-lore authored-work-name))
  
  (define authored-work-media 
    (with-handlers ([exn:fail? (thunk* #f)])
		   (dynamic-require  
		     (string->symbol
		       (~a authored-work-name "/lore")) 
		     'media)))

  (when authored-work-media
    (map add-image! authored-work-media))

  (authored-work-name->authored-work-card
    #:download-section download-section
    authored-work-name))

(define (require+create-page authored-work-name)
  (define lore (dynamic-require-lore authored-work-name))
  (define wrapper (lambda (c) (normal-content
				(codespells-navbar)
				c)))
  (let ()
    (rune-collection-name->rune-collection/page
      authored-work-name
      #:path 
      (list "collections" (lore->name-slug lore) "index.html")
      #:wrapper wrapper)))


