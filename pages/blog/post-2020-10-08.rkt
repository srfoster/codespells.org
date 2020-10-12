
#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")

(define-post
  2020-10-08
  "Running Unreal Editor In the Cloud"
  @div{
  It's working for me, at least.
  }
  @div{

  @p{
    @a[href: "https://gofreak.tumblr.com/post/87018936015/unreal-engine-4-developing-in-the-cloud"]{This tutorial from several years ago} shows how to set up Unreal Editor in the cloud on Amazon EC2.  However, I found that it was a bit out of date.  And I hit some rough patches.}

  @p{At first, I spun up a typical EC2 instance in Amazon's G-class -- @tt{g3s.xlarge} to be specific.  The tutorial suggested an instance type that isn't available today.  So I got the closest thing instead.}
  
  @p{I was able to get remote desktop access just fine. And began downloading Unreal via the Epic Launcher.}

   @(img:cloud-setup-epic-dl.png 
     style: (properties width: 400))

   @(img:cloud-setup-unreal-install.png 
     style: (properties width: 400))

  @p{But when I started to run Unreal, I got an error about it needing DirectX.  After doing some digging, I decided that this was because although the machine has NVIDIA cards, it doesn't have the drivers installed.  I tried installing them myself, but couldn't seem to get it to work.}

   @p{So I switched the machine image I was using to @a[href: "https://aws.amazon.com/marketplace/pp/NVIDIA-Microsoft-Windows-Server-2016-with-NVIDIA-G/B071NNXVLC"]{this one}, which has the NVIDIA drivers installed already.}


   @p{Everything looked good:}

   @(img:cloud-setup-graphics-card-settings.png 
     style: (properties width: 400))

   @p{And it worked!  I was able to run the Unreal Editor remotely.}

   @(img:cloud-setup-unreal-demo.png 
     style: (properties width: 400))

   @(img:cloud-setup-unreal-jump.png 
     style: (properties width: 400))

   @p{I went through my own CodeSpells installation process (@(github:codespells)), which allowed me to set up a new CodeSpells mod project.}

   @(img:cloud-setup-install-codespells.png 
     style: (properties width: 400))

   @p{And I was able to create new assets in Unreal.}

   @(img:cloud-setup-mod-making.png 
     style: (properties width: 400))

   @p{It built smoothly (always a relief to know that your code works on a different machine).}

   @(img:cloud-setup-mod-building.png 
     style: (properties width: 400))

   @p{And I was able to place my new content in CodeSpells.}

   @(img:cloud-setup-mod-testing-1.png 
     style: (properties width: 400))

   @(img:cloud-setup-mod-testing-2.png 
     style: (properties width: 400))

   @(img:cloud-setup-mod-testing-3.png 
     style: (properties width: 400))

   @p{I was even able to put a fancy particle effect from an FX pack that I purchased on the Unreal Marketplace..}

   @(img:cloud-setup-mod-testing-4.png 
     style: (properties width: 400))

   @p{There's still more to iron out, but I'm happy that I can develop in the cloud now.  My computer was running out of space fast!}

  @p{- Stephen R. Foster}
  @(logo 200)
  })
