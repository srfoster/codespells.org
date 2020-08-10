#lang at-exp racket

(provide post:hello-world)

;TODO: make this a legit package.
(require "../../lang.rkt")
(require "./lang.rkt")


(define-post 
  2020-08-06
  "Hello, World!"
  @div{
    We have liftoff!!  Or a new website, that is.
  }
  @div{
    @p{It begins not with a bang, but a whimper.  In this case, the whimper is a new website -- the key feature of which is this blog.  I plan to make regular updates here on the (renewed) progress of CodeSpells.}

    @p{Also, Lindsey set up @(link-to-patreon "a Patreon") and the @(link-to-mailing-list "mailing list").}

    @p{Or if you like fancy buttons: @(link-to-patreon) and @(link-to-mailing-list)}

    @side-note{ 
      @h5{(side note for programming language nerds)}
      @(hr)
      @(row
	 @(col-2 (img width: "100%" src: "https://racket-lang.org/img/racket-logo.svg"
		      style: (properties padding-top: 20)))
	 @(col-10 @p{
      The @(a href: "https://github.com/srfoster/codespells.org/blob/master/pages/blog/post-2020-08-06.rkt" "code for this blog post") (and the website itself) is authored in Racket.  This is also the language with which I'm reauthoring CodeSpells.  Over the last few months of secret CodeSpells development, Racket has allowed me to think thoughts I couldn't otherwise have thought.  I couldn't be happier. })
      )
    }

    @p{Stay tuned for more!!}

    @p{- Stephen R. Foster}
    @(logo 200)
  })
