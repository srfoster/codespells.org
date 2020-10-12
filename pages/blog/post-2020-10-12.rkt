
#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")

(define-post
  2020-10-12
  "A Whole New World"
  @div{
  Shining, shimmering splendid.  And with voxels!
  }
  @div{

  @p{I released a new world last week.}

  @(video:minecraft-world-clip1.mp4)

  @p{As anyone who as read the github README at @(github:codespells) knows,
  you can launch a simple world with the following program.}
  
  @pre{
    #lang codespells

    (once-upon-a-time
      #:world (demo-world)
      #:aether (demo-aether))
  }

  @p{You can get the new world (an obvious homage to Minecraft) with:}


  @pre{
    #lang codespells

    (once-upon-a-time
      #:world (voxel-world)
      #:aether (demo-aether))
  }


  @p{Oh, and the mods that work in the demo world work in the voxel world too.  Obviously.}


  @p{- Stephen R. Foster}
  @(logo 200)
  })
