#lang at-exp racket

(require "../../lang.rkt")
(require "./lang.rkt")

(define-post
  2021-05-14
  "New Media"
  @div{
  We've been making a billion videos.  Here are some!
  }
  @md{

  **Playlist #1.**  Our recent interview with Jason Rosenstock, environment artist for the version of CodeSpells currently on Steam (and currently being rebuilt):

  @(iframe
     width: "560" height: "315" src: "https://www.youtube.com/embed/videoseries?list=PLZfqZ8S_29LEfrw7JxHccR_lq_sfh2lpn" 'title: "YouTube video player" 'frameborder: "0" 'allow: "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 'allowfullscreen: #t )

  **Playlist #2.** My dev vlog, where I share updates about development.  Be warned; I am weird.

  @(iframe
     width: "560" height: "315" src: "https://www.youtube.com/embed/videoseries?list=PLZfqZ8S_29LGot8TkZBlrYHTbt0p0FDHW" 'title: "YouTube video player" 'frameborder: "0" 'allow: "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 'allowfullscreen: #t )

  **Playlist #3.** An in-progress tutorial series about Unreal.js, which is one of the underlying technologies in the CodeSpells stack:

  @(iframe
     width: "560" height: "315" src: "https://www.youtube.com/embed/videoseries?list=PLZfqZ8S_29LH_OKpxKf3ghBU6pcKWyERM" 'title: "YouTube video player" 'frameborder: "0" 'allow: "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 'allowfullscreen: #t )

  @p{- Stephen R. Foster}
  @(logo 200)
  })
