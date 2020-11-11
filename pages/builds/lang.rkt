#lang racket

(provide (all-from-out codespells/lore)
	 define-works-cards)
(require codespells/lore
	 "../../lang.rkt"
	 syntax/parse/define
	 (for-syntax racket/syntax
		     racket/format))

;Just put stuff here that is for interfacing
;  with codespells/lore but specifically for 
;  constructing this site


#;
(define-syntax (require+add-image!+build->build-card stx)
  (syntax-parse stx
		[(_ work-name)
		 #:with work-name: (format-id stx "~a:" #'work-name)
		 #:with work-name/lore (format-id stx "~a/lore" #'work-name)
		 #'(let ()
		     (local-require (prefix-in work-name: work-name/lore))
		     (let ()
		       (add-image! (build->preview-image-page work-name))
		       (build->build-card work-name)))]))

#;
(define-syntax (define-works-cards stx)
  (syntax-parse stx
		[(_ (work-cards-var-name) (work-name ...))
		 #'(begin
		     (define (work-cards-var-name)
		       (list
			 (require+add-image!+build->build-card work-name)
			 
			 ...)))
		 ]))



