#lang racket

(provide 
  all-posts
  all-post-pages
  define-post
  preview-post
  (struct-out post)
  (all-from-out "../../lang.rkt"))

(require gregor (only-in website/util element?)
	 syntax/parse/define
	 (for-syntax racket/syntax racket/format))

;For preview-post
(require "../../lang.rkt")

(struct post (date title preview content))

(define posts      '())
(define post-pages '())

(define (add-post! p)
  (define post-page
    (page (list "posts" (~a (~t (post-date p) "yyyy-MM-dd") 
			    ".html"))
	  (blog-post-page p)))

  (set! posts      (cons p posts))
  (set! post-pages (cons post-page post-pages)))

(define (all-posts)
  posts)

(define (all-post-pages)
  post-pages)

(define-syntax (define-post stx)
  (define (slugify title-stx)
    (string-downcase
      (regexp-replaces
	(~a (syntax-e title-stx))
	'([#rx"[^A-Za-z ]" ""]
	  [#rx" " "-"]))))

  (syntax-parse stx 
		[(_ date title preview content)
		 #:with post-getter (format-id stx "post:~a" (slugify #'title))
		 #:with post-path #'(list "posts" (~a 'date ".html"))
		 #'(begin
		     (provide post-getter)
		     (define (post-getter)
		       (post 
			 (parse-date 
			   (~a 'date)
			   "yyyy-MM-dd")
			 title
			 preview
			 content))
		     (define p (post-getter))
		     (add-post!  p))]))

(define (post-id post)
  ;Not quite.  2 posts could have same title
  ;  Or maybe we should disallow that...
  (post-title post))

(define (post-index post)
  (index-of (map post-id (all-posts)) 
	    (post-id post) 
	    string=?))

(define (link-to-next-post post)
  (thunk* ; Gotta thunk it so that we ensure all posts are registered before we generate the links (thunking it pushes generation to xml production time)
    (define i (post-index post))

    (when (> i 0)
      (define next-page (list-ref (all-post-pages) (sub1 i)))
      (define next-post (list-ref (all-posts) (sub1 i)))
      (link-to next-page
	 (~a "Next Post: " 
	     (post-title next-post))))))

(define (link-to-prev-post post)
  (thunk* ; Gotta thunk it so that we ensure all posts are registered before we generate the links (thunking it pushes generation to xml production time)
    (define i (post-index post))

    (when (< i (sub1 (length (all-posts))))
      (define prev-page (list-ref (all-post-pages) (add1 i)))
      (define prev-post (list-ref (all-posts) (add1 i)))
      (link-to prev-page
	 (~a "Previous Post: " 
	     (post-title prev-post))))))

(define (blog-post-page post)
  (content
    (codespells-navbar)
    (container
      (jumbotron 
	(h1 (post-title post))
	(h6 (~t (post-date post)
		"E, MMMM d, y"))
	(link-to-next-post post)
	(link-to-prev-post post)
	)
      (post-preview post)
      (hr)
      (post-content post)
      (link-to-next-post post)
      (link-to-prev-post post))))

(define (preview-post post)
  (clear-card
    (list
      (h4 (post-title post))
      (~t (post-date post)
	  "E, MMMM d, y"))
    (post-preview post)
    (a href: (prefix/pathify (~a "posts/" 
				 (~t (post-date post)
				     "YYYY-MM-dd")
				 ".html"))
       (button-success
	 "Read It " (fa-angle-double-right)))))
