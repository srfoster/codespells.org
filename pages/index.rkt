#lang at-exp racket 

(provide index.html)

(require "../lang.rkt"
         "blog/lang.rkt"
         )

(define (trailer-video)
  (card 
    (card-header
      (h2 "CodeSpells 2020 Trailer")
      )
    (card-body
      (div class: "embed-responsive embed-responsive-16by9"
           (yt "BqaAjgpsoW8")))))

(define (about-the-game)
  (card 
    (card-header
      (h2 "About the Game")
      )
    (card-body
      @md{
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sollicitudin turpis odio, sit amet convallis dolor vulputate eu. Maecenas scelerisque iaculis porttitor. Donec rutrum mauris in ullamcorper mollis. Maecenas enim nunc, suscipit pulvinar aliquet ut, tempus tincidunt erat. Donec pharetra dignissim posuere. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec pharetra suscipit velit non consequat. Morbi pretium eleifend purus at laoreet. Suspendisse tempus felis et imperdiet imperdiet. Nulla ipsum sem, porta sed suscipit sed, vulputate vel libero. Nunc tincidunt at nisi in aliquet. Sed vel molestie tortor, sed tincidunt ipsum. Proin a turpis augue. Curabitur facilisis est sed libero cursus dignissim. Vestibulum justo ligula, hendrerit ac lacus sit amet, iaculis dignissim lorem. 
      })))

(define (links-card)
  (card
    (card-header
      (h2 "Check it out!")
      )
    (card-body
      (link-to-steam)
      (a href: (prefix/pathify "blog.html")
         (button-warning
           (fa-book)
           " Read the Blog" ))
      (a href: "https://www.patreon.com/codespells" 
         (button-primary
           (fa-gem)
           " Join our Patreon" )) 
      (a href: "http://eepurl.com/hacdwD"
         (button-info
           (fa-envelope)
           " Join the Mailing List" ))
      (a href: "https://discord.gg/prsZZnm"
         (button-danger
           (fa-envelope)
           " Join the Discord" ))
      )
    )
  )

(define (builds-card)
  (card
    (card-header
      (h2 "Builds")
      )
    (card-body
      (div
        (row
          (col-6
            (p "Works: "))
          (col-6
            (p "7")
            )
          )
        (row
          (col-6
            (p "Rune Collections: "))
          (col-6
            (p "4")
            )
          )
        )
      (link-to-builds)
      )
    )
  )

(define (recent-blog-posts)
  (card
    (card-header
      (h2 "Recent Blog Posts")
      )
    (card-body
      (p "Recent posts go here...")
      )
    ) 
  )

(define (left-column)
  (col-6
    (trailer-video)     
    (links-card)
    (recent-blog-posts)
    ))

(define (right-column)
  (col-6
   (about-the-game)
   (builds-card)
   ))

(define (homepage-content)
  (container
    (row
      (left-column) 
      (right-column))
    ) 
  )

(define (big-screen-content)
  (normal-content
    (div class: show-only-on-md-and-up
	 (codespells-navbar)
	 (homepage-content)
         (codespells-footer)
         )))

(define (mobile-content)
  (normal-content
    (div class: show-only-on-sm-and-below
	 (codespells-navbar)
	 (homepage-content)
         (codespells-footer)
         )))


(define (index.html)
  (page index.html
        (div
          (list
            (big-screen-content)
            (mobile-content)))))
