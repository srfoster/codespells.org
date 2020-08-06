#lang at-exp racket

(provide bootstrap
         content
;         container
         row
         responsive-row
         bootstrap-files
         include-bootstrap-js
         include-bootstrap-css
         include-p5-js
	 include-font-awesome-css 
	 font-awesome-files
         
         (all-from-out "./bootstrap/buttons.rkt")
         (all-from-out "./bootstrap/modal.rkt")
         (all-from-out "./bootstrap/cards.rkt")
         (all-from-out "./bootstrap/badges.rkt")
         (all-from-out "./bootstrap/col.rkt")
         (all-from-out "./bootstrap/tabs.rkt")
         (all-from-out "./bootstrap/nav.rkt")
         (all-from-out "./bootstrap/accordion.rkt")
         (all-from-out "./bootstrap/alerts.rkt")
         (all-from-out "./bootstrap/font-awesome.rkt")
         (all-from-out "./main.rkt"))

(require (except-in "./main.rkt" col)
         "./define-extensible-element.rkt"
         "./bootstrap/buttons.rkt"
         "./bootstrap/cards.rkt"
         "./bootstrap/badges.rkt"
         "./bootstrap/modal.rkt"
         "./bootstrap/col.rkt"
         "./bootstrap/tabs.rkt"
         "./bootstrap/nav.rkt"
         "./bootstrap/accordion.rkt"
         "./bootstrap/alerts.rkt"
         "./bootstrap/font-awesome.rkt"
         "./util.rkt"
         "./path-prefix.rkt"
         racket/runtime-path)

(define-runtime-path js "bootstrap/js")
(define-runtime-path css "bootstrap/css")
(define-runtime-path webfonts "bootstrap/webfonts")

(define (include-modernizr-js)
  (list
   (include-js "/js/modernizr-custom.js" #:tag 'async)))

(define (include-bootstrap-js)
  (list 
    (include-js "/js/bootstrap.bundle.min.js")))

(define (include-bootstrap-css #:defer [defer #f])
  (if defer
      (list
       (include-deferred-css "/css/bootstrap.min.css"))
      (list 
       (include-css "/css/bootstrap.min.css"))))

(define (include-font-awesome-js)
  (list 
    (include-js "/js/font-awesome.js" #:tag 'async)))

;TODO: include-font-awesome-css
(define (include-font-awesome-css #:defer [defer #f])
  (if defer
      (list
       (include-deferred-css "/css/fontawesome.min.css")
       (include-deferred-css "/css/fontawesome-brands.min.css")
       (include-deferred-css "/css/fontawesome-solid.min.css"))
      (list
       (include-css "/css/fontawesome.min.css")
       (include-css "/css/fontawesome-brands.min.css")
       (include-css "/css/fontawesome-solid.min.css"))))
       



(define (include-p5-js)
  (list 
    (include-js "/js/p5.min.js" #:tag 'async)))

(define (feature-checks)
  @script/inline{
  function preloadSupported() {
    var relList = document.createElement('link').relList;
    return !!(relList && relList.supports && relList.supports('preload'));
  }
 })

(define (content #:head (head-content '()) 
		 #:defer-css (defer #f)
                 .  body-content)
   (html
    (head
      (meta 'charset: "utf-8")
      (meta name: "viewport"
            content: "width=device-width, initial-scale=1, shrink-to-fit=no")
      (feature-checks)
      (include-modernizr-js)
      (include-bootstrap-css #:defer defer)
      (include-font-awesome-css #:defer defer)
      
      head-content
      )

    (body
      
      #;
      (include-js "/js/jquery-3.2.1.slim.min.js")
      (include-js "/js/jquery-3.4.1.min.js")
      (include-js "/js/moment.min.js" #:tag 'async)
      body-content
      (include-bootstrap-js)
      (script/inline 
        @~a{
          $(function () {
            $('[data-toggle="tooltip"]').tooltip()
          })
        })
      
      ;(include-font-awesome-js)
      ))
  )

(define/provide-extensible-element
  container
  div
  [class: "container" class-join])

(define/provide-extensible-element 
  row
  div
  (class: "row" class-join))

(define/provide-extensible-element 
  jumbotron
  div
  (class: "jumbotron" class-join))

(define/provide-extensible-element 
  carousel
  div
  (class: "carousel" class-join))

(define/provide-extensible-element 
  carousel-inner
  div
  (class: "carousel-inner" class-join))

(define/provide-extensible-element 
  carousel-item
  div
  (class: "carousel-item" class-join))


(define (bootstrap-files)
  (list
    (page js/moment.min.js
          (build-path js "moment.min.js"))

    (page ;js/jquery-3.2.1.slim.min.js 
          js/jquery-3.4.1.min.js
          (build-path js "jquery-3.4.1.min.js")

            #;
            (build-path js "jquery-3.2.1.slim.min.js"))
    
    ;(page js/font-awesome.js 
    ;      (build-path js "font-awesome.js"))

    (page js/p5.min.js 
          (build-path js "p5.min.js"))

    (page js/bootstrap.bundle.min.js 
          (build-path js "bootstrap.bundle.min.js"))

    (page js/modernizr-custom.js
          (build-path js "modernizr-custom.js"))

    (page css/bootstrap.min.css 
          (build-path css "bootstrap.min.css"))

    (page css/bootstrap.min.css.map 
          (build-path css "bootstrap.min.css.map"))
    
    (font-awesome-files)))

(define (font-awesome-files)
  (list
    (page css/fontawesome.min.css 
          (build-path css "fontawesome.min.css"))
    (page css/fontawesome-brands.min.css 
          (build-path css "fontawesome-brands.min.css"))
    (page css/fontawesome-solid.min.css 
          (build-path css "fontawesome-solid.min.css"))

    (page webfonts/fa-brands-400.eot
          (build-path webfonts "fa-brands-400.eot"))
    (page webfonts/fa-brands-400.svg
          (build-path webfonts "fa-brands-400.svg"))
    (page webfonts/fa-brands-400.ttf
          (build-path webfonts "fa-brands-400.ttf"))
    (page webfonts/fa-brands-400.woff
          (build-path webfonts "fa-brands-400.woff"))
    (page webfonts/fa-brands-400.woff2
          (build-path webfonts "fa-brands-400.woff2"))

    (page webfonts/fa-solid-900.eot
          (build-path webfonts "fa-solid-900.eot"))
    (page webfonts/fa-solid-900.svg
          (build-path webfonts "fa-solid-900.svg"))
    (page webfonts/fa-solid-900.ttf
          (build-path webfonts "fa-solid-900.ttf"))
    (page webfonts/fa-solid-900.woff
          (build-path webfonts "fa-solid-900.woff"))
    (page webfonts/fa-solid-900.woff2
          (build-path webfonts "fa-solid-900.woff2"))))

(define (bootstrap site)
  (append
    (flatten site)
    (bootstrap-files)))

(define (responsive-row #:columns columns #:padding [padding 3] #:d-flex? [d-flex #f] . items)
  (define row-size (max 1 (min 12 (exact-round (/ 12 columns)))))
  (apply row (map (curry div class: (~a (if d-flex "d-flex " "")
                                        "col-lg-" row-size
                                        " col-sm-6 col-xs-12 my-3 px-" padding)) items)))



