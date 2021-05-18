#lang racket

(provide blog.html)

(require
  "./blog/lang.rkt"
  "../lang.rkt"
  "./blog/posts.rkt")

(define (blog-container)
  (container
    (h1
      style: (properties
               padding-top: 100
               text-align: "center")
      "The Blog")
    (row
      (map (compose (curry div
                           class: "p-2 col-xs-12 col-md-6 col-lg-4")
                    preview-post)
           (all-posts)))))

;Mobile view does not include background image
(define (page-content)
  (normal-content
    #:head (list (title "CodeSpells Dev Blog")
                 (meta name: "description" content: "Keep up-to-date with the latest CodeSpells news with our blog updates.")
                 ) 
    #:mobile-content (blog-container)

    (div
      style: (properties
               position: 'fixed
               background-image: (~a "url("path:images/EarthBall.png")")
               background-size:  "cover"
               background-position:  "center"
               background-repeat:  "no-repeat"
               background-attachment:  "fixed"
               height: "100vh"
               width: "100vw"
               z-index: "-1"
               ))
    (blog-container)))

(define (blog.html)
  (page blog.html
        (page-content)))

(module+ main
  (render #:to "out"
          (list
            (all-post-pages)
            (blog.html))))
