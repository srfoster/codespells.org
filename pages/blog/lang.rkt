#lang at-exp racket

(provide 
  post->path
  all-posts
  all-post-pages
  define-post
  preview-post
  image-grid

  authoring-tools
  authored-works
  authored-work
  canon
  the-seeker

  codespells-is-a-community

  dont-teach
  discord

  (struct-out post)
  (all-from-out "../../lang.rkt")

  crunchy-demo-lang
  code-block
  (all-from-out codespells-runes)
  
  my-lang
  grid
  my-rune
  (all-from-out 2htdp/image)

  demo-editor
  simple-surface

  yt)

(require codespells-runes)
(require (prefix-in h: 2htdp/image))

(require gregor (only-in website/util element?)
	 syntax/parse/define
	 (for-syntax racket/syntax racket/format 
		     (only-in "../../lang.rkt" slugify)))

;For preview-post
(require "../../lang.rkt")

(struct post (date title preview content))

(define posts      '())
(define post-pages '())


(define (post->path p)
  (list "posts" (~a 
		  (post-id p)
		  ".html")))

(define (add-post! p)
  (define post-page
    (page (post->path p) 
	  (blog-post-page p)))

  (set! posts      (cons p posts))
  (set! post-pages (cons post-page post-pages)))

(define (all-posts)
  posts)

(define (all-post-pages)
  post-pages)


(define-syntax (define-post stx)
  (syntax-parse stx 
		[(_ date title preview content)
		 #:with post-getter (format-id stx "post:~a" (slugify (syntax-e #'title)))
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
		     (add-post! p)
		     (module+ main
			      (render 
				(page (post->path p) 
				      (blog-post-page p))
				#:to "out"))
		     )]))

(define (post-id post)
  (slugify (post-title post)))

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
  (normal-content
    (codespells-navbar)
    (container
      (jumbotron 
	(h1 (post-title post))
	(h6 (~t (post-date post)
		"E, MMMM d, y")))
      (post-preview post)
      (hr)
      (post-content post)
      (br)
      (p "P.S. Please consider supporting us on Patreon.  We can't do this without you!")
      (link-to-patreon)
      (br)
      (br)

      (card
	(card-body
	  (link-to-next-post post)
	  (hr)
	  (link-to-prev-post post)))
      (br)
      (br)
      (br))))

(define (preview-post post)
  (clear-card
    (list
      (h4 (post-title post))
      (~t (post-date post)
	  "E, MMMM d, y"))
    (post-preview post)
    (a href: (prefix/pathify (post->path post))
       (button-success
	 "Read It " (fa-angle-double-right)))))


(define (image-grid . img+captions)
  (define (cardify img+caption)
    (div
      class: "col-xs-12 col-md-6 col-lg-4"
      (card
	class: "pt-1"
	((car img+caption) class: "card-img-top")
	(card-body
	  (cdr img+caption)))))
  (list
    (hr)
    (row
      (map cardify img+captions))
    (hr)))




(define (authoring-tools)
  (list
    (span
      style: (properties 'white-space: "nowrap")
      (img:noun_quill.svg width: 20)
      @b{CodeSpells})
    @b{ Authoring Tools}))

(define (authored-works)
  (list
    (span
      style: (properties 'white-space: "nowrap")
      (img:noun_Book.svg width: 20)
      @b{CodeSpells})
    @b{ Authored Works}))

(define (authored-work) 
  (list
    (span
      style: (properties 'white-space: "nowrap")
      (img:noun_Book.svg width: 20)
      @b{CodeSpells})
    @b{ Authored Work}))

(define (canon) 
  (list
    (span
      style: (properties 'white-space: "nowrap")
      (img:noun_Library.svg width: 20)
      @b{CodeSpells})
    @b{ Canon}))

(define (the-seeker)
  (list
    (span
      style: (properties 'white-space: "nowrap")
      (img:noun_Book.svg width: 20)
      @b{CodeSpells:})
    @b{ The Seeker}))

(define (codespells-is-a-community)
  @a[href: "/posts/the-codespells-story-part-3.html"]{@b{CodeSpells is a community}})

(define (dont-teach)
    @(a href: "https://amzn.to/3aIBflN" @i{Don't Teach Coding: Until You Read This Book})
  )

(define (discord)
    @(a href: "https://discord.gg/prsZZnm" "CodeSpells Discord")
  )

;Jason Rosenstock always called things with this look-and-feel "crunchy".
;  A small tribute to him here.
(define crunchy-demo-lang
  (rune-lang 'basic-lang
	     (list
	       (html-rune 'build
			  (img 
			    width: 100
			    src: "/RuneImages/build.svg"))
	       (html-rune 'small
			  (img 
			    width: 100
			    src: "/RuneImages/small.svg"))
	       (html-rune 'medium
			  (img 
			    width: 100
			    src: "/RuneImages/medium.svg"))
	       (html-rune 'large
			  (img 
			    width: 100
			    src: "/RuneImages/large.svg"))
	       (html-rune '|(|
			  (div
			    style: (properties padding-top: 25)
			    (img 
			      width: 50
			      src: "/RuneImages/OPEN-PAREN.svg")))
	       (html-rune '|)|
			  (div
			    style: (properties padding-top: 25)
			    (img 
			      width: 50
			      src: "/RuneImages/CLOSE-PAREN.svg")))
	       )))

(define (code-block . s )
  (code (pre s)))


(define (my-rune image)
  (svg-rune-description
    (rune-background
      #:color "#FFA500"
      (rune-image image))))

(define c (h:circle 20 'solid 'red))

(define (grid image)
  (h:above
    (h:beside image image)
    (h:beside image image)))

(define (my-lang)
  (rune-lang 'my-lang
	     (list
	       (html-rune 'X 
			  (my-rune
			    (grid c)))
	       (html-rune 'Y
			  (my-rune
			    (grid 
			      (grid c))))
	       (html-rune 'Z
			  (my-rune
			    (grid
			      (grid 
				(grid c))))))))


(define (simple-surface lang prog-stx)
  (rune-surface-component 
    #:restore-state
    (lambda (surface)
      @js{
      })
    #:store-state
    (lambda (surface)
      @js{
      })
    lang
    prog-stx))


(define (yt id)
  (iframe 'width: "560" 'height: "315" 'src: (~a "https://www.youtube.com/embed/" id) 'frameborder: "0" 'allow: "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 'allowfullscreen: #t))
