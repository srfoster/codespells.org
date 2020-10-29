
#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")


(define-post
  2020-10-16
  "Creation and Destruction"
  @div{
    Code creates.  Code Destroys.
  }
  @div{
  @p{A quick tech demo of me creating someting with code... and destroying it with code.}

  @(yt "s6FGMGCYOjQ")

  @p{The code the creates the tower:}

  @pre{
  (up 400
    (world-above
      gnarly-rock
      (parentify gnarly-rock flames)
      gnarly-rock))
  }

  @p{If you're wondering, @tt{world-above} places the actors that follow above each other at runtime, regardless of height.}

  @p{And here's the code that destroys everything:}

  @pre{
   (parentify explosion
	      (radial-force 100000 1000))
  }

  @p{If you're wondering, @tt{parentify} is just shorthand for code that makes one actor a parent of an other.  And @tt{radial-force}'s two arguments are the amount of force and the radius.  The @tt{explosion} just makes fancy particles to make it look nice; the @tt{radial-force} does the damage.}


  @p{- Stephen R. Foster}
  @(logo 200)
  })
