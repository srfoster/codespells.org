#lang racket

;Move to codespells/lore?

(provide rune-collection-page
	 build->build-card
	 build-card
	 download-button
	 coming-soon)

(require "../../lang.rkt"
	 website-js/components/accordion-cards
         syntax/parse/define
	 codespells/lore
	 (for-syntax racket/syntax
		     racket/format))

(define-syntax (rune-collection-page stx)
  (syntax-parse stx
		[(_ prefix path)
		 #:with name (format-id stx "~a:name" #'prefix)
		 #:with description (format-id stx "~a:description" #'prefix)
		 #:with runes (format-id stx "~a:runes" #'prefix)
		 #`(page path
			 (normal-content
			   (codespells-navbar)
			   (container
			     (h1 name)
			     description 
			     (map
			       (lambda (r)
				 ;Firsts and seconds
				 ; are gross...
				 ;  Some kind of rune info struct (along with collection info and build info)
				 (card (card-header
					 (second r)
					 (h3 (first r)))
				   (card-body
				     (third r)
				     ))
				 )
			       (runes))
			     )))]))

(define-syntax (build->build-card stx)
  (syntax-parse stx
		[(_ prefix)
		 #:with name (format-id stx "~a:name" #'prefix)
		 #:with description (format-id stx "~a:description" #'prefix)
		 #:with rune-collections (format-id stx "~a:rune-collections" #'prefix)
		 #:with preview-image (format-id stx "~a:preview-image" #'prefix)

		 #`(let ()

		     ;The one thing preventing us moving this macro to codespells/lore
		     (add-image! 
		       (page (list "builds" 
				   (~a 'prefix) 
				   "preview.png")
			     preview-image
			     ))

                     (build-card (h3 (name)) 
				 (img class: "card-img-top"
				      src: (~a 
					     "builds/" 'prefix"/preview.png"))
				 (accordion-card #:header "Read More..."
				   (h5 "Rune Collections")
				   (map 
				     rune-collection-name->preview-icon 
				     (rune-collections))
                                   (br)
				   (description)
                                   )

				 (hr)

				 ;Change on s3
				 (download-button (symbol->string 'prefix)))
		     )
		 ]))


(define (build-card title img . content)
  (card
    (card-header title
		 img)
    (card-body content)))

(define (download-button name)
  (a href: (~a "https://codespells-org.s3.amazonaws.com/StandaloneBuilds/" name "/0.0/" name ".zip")
     (button-success "Download for Windows"
		     (img:windows.svg width: 25 style: (properties margin-left: 5)))))


(define (coming-soon)
  (alert-primary "Coming soon!"))
