#lang at-exp racket

(require (except-in "../../lang.rkt" small))
(require (except-in "./lang.rkt" small))
(require 
  website-js/components/accordion-cards
 ; (except-in website-js small)
  (prefix-in html:
	     (only-in website
		      script))
  (prefix-in h:
	     2htdp/image)

  "../../legacy/in-game-lang.rkt"
  )


(define-post 
  2020-09-10
  "Toward a 1st Release - Part 2"
  @div{More weird, weird documentation}
  @div{

 @code-block{
  (beam)
 }

 @p{"It makes a beam," said the young wizard, rolling his eyes.  "Look, I'll show you."}

 @p{With that, he opened his own Rune surface with a wave of his hand.  Patiently, the
 Arch Mage watched as the young wizard constructed his own version of the "Beam" @b{Spell}
 and @b{Casted} it.}

 @(video:beam-demo.mp4)

 @p{"Almost," said the Arch Mage.  "But I asked, 'What does this @b{Spell} do?'"}

 @p{"Yeah, and I just showed you," said the young wizard in a tone that made it clear
  that he felt he deserved his own Arch Mage robes already.}

 @p{"You showed me the final observable effect of the @b{Magic}," said the Arch Mage.
  "But there's more to the story.  Where does @b{Magic} begin?"}

 @p{The young wizard scratched his head.  "In the @b{Aether}."}

 @p{"And your demonstration only shows the part of the magic observable in the @b{World}."}

 @p{"How can I show you something I can't see?" said the young wizard.}

 @p{"There are many ways to make the invisible visible," said the Arch Mage, "but the easiest is to paint
  a picture in my mind with words.
  Tell me the story of the @tt{(beam)} @b{Spell}.  Begin with the moment it is @b{Cast}.
  Tell me the struggles the @b{Magic} goes through, the transformations and evolutions.
  Tell me what form the @b{Magic} takes when it @b{Crosses} to our @b{World}.  And tell me
  what adventures befall the @b{Magic} after its arrival here.  And tell me how those adventures
  result in the beam of light we both see here."  The Arch Mage gestured at the column of fire
 towering above them both}

 @p{The young wizard's shoulders sank.  "I don't know that story -- just the beginning and the end."}

 @p{"As did I, when I first arrived at the academy," said the Arch Mage.  "The deeper our stories,
  the greater our power.  I will tell you the story of that @b{Spell}, if you like."}

 @p{"Very much," said the young wizard.}

 @h5{Once Upon A Time: A @b{Spell} is @b{Cast}}

 @p{"Remind me," said the Arch Mage.  "What is the definition of @b{Magic}?"}

 @p{The young wizard recited: "Any @b{Aetherial} or @b{Wordly} effect resulting from a @b{Spell} being @b{Cast}."}

 @p{"Exactly. @i{Any} effect," said the Arch Mage.  "@b{Magic} is a word that encompasses a lot.
 If the @b{Spell} results in the calculation of the fifteen thousandth prime number in the @b{Aether}
 before @b{Crossing} to our @b{World}, is that @b{Magic}?"}

 @p{"Yes?" said the young wizard.}

 @p{"And if, after @b{Crossing}," said the Arch Mage, "that number is multiplied by two, is that multiplication also @b{Magic}?"}

 @p{"Yes?" said the young wizard.}

 @p{"Even if the result of that multiplication never results in any observable effect?"}

 @p{"Yes?  I thought you were going to tell me a story..."}

 @p{"I am," said the Arch Mage, "as quickly as I can.  But we need more common language first.  Stories can always
 be told more quickly when one uses as few words as possible.  And the best words take a complicated idea and
 slice it in half.  What word would you use for @b{Magic} whose effects are not observable?"}

 @p{"@b{Hidden Magic}, I suppose?" said the young wizard.}

 @p{"And what shall we call the opposite of @b{Hidden Magic}?"}

 @p{"@b{Unhidden}?" said the young wizard. "I changed my mind.  Can we call them @b{Invisible} and @b{Visible}?"}

 @p{"We can call them whatever you wish," said the Arch Mage.  "As long as they are a pair of words you'll remember."}

 @p{Suddenly the young wizard's face lit up. "So there are at least @i{four} kinds of magic," he said.
 "Magic can happen in the @b{Aether} or in the @b{World}.  And it can be @b{Invisible} or @b{Visible}."}

 @p{"Can you write a @b{Spell} to draw a picture that will help us remember this new discovery?"}

 @p{The young wizard immediately began arranging Runes and text on his surface.  Finally, he cast his @b{Spell},
 which produced another surface with a table on it:}

 @card[class: "m-5"]{
  @card-body{
   @h5{4 Kinds of Magic}
    @(row
     (col-4 @b{}) (col-4 @b{Visible}) (col-4 @b{Invisible}))
   @(row
     (col-4 @b{Aetherial}) (col-4 @i{Aetherial / Visible}) (col-4 @i{Aetherial / Invisible}))
   @(row
     (col-4 @b{Worldly})   (col-4 @i{Worldly / Visible}) (col-4 @i{Worldly / Invisible}))
  }
 }

 @p{"Back home," said the young wizard, "the village elders classified magic differently: fire magic, water magic, etc. But this..."
 He shook his head in awe: "It feels..."}

 @p{"Deeper?" said the Arch Mage.}

 @p{The boy nodded.}

 @p{"Other classifications aren't wrong," said the Arch Mage.  "But this way of thinking will help you
 understand all other ways -- and more importantly, it will let you invent new ways.  Let us continue.
  Can you give me an example of @b{Aetherial} @b{Visible} @b{Magic}?"}

 @p{"I suppose it's like what I just did to create the diagram here."  He gestured at the surface in the air, still displaying
 the four kinds of magic.  "It's @b{Magic} that has effects only in the @b{Aether}, and @b{Visible} only because we can
  peer into the @b{Aether} through a surface."}

 @p{"And @b{Invisible} @b{Magic}," said the Arch Mage, "does it have a purpose?"}

 @p{The young wizard thought for a long time.  "I suppose that any @b{Magic} that is @i{entirely} @b{Invisible} must
  be quite pointless -- like a tree falling in a forest with no one around."}

  @p{"Then why did we bother naming something pointless?" said the Arch Mage with a faint smile.}

  @p{"I suppose," said the young wizard, "most @b{Magic} must consist of @i{both} @b{Visible} parts and @b{Invisible} parts.
  Like, if some @b{Magic} does something very complicated and @b{Invisible} for a few thousand years and then, finally, at the end,
  it does something @b{Visible} right at the end -- to let us know how the last thousand years went -- then it wasn't pointless
   at all."}

  @p{For the first time since the young wizard's arival at the academy, the Arch Mage seemed truly proud.
   Quitely, he said, "I think you are destined for great things."}

  @p{The boy looked away before his blush could show.}

  @p{"We are ready," said the Arch Mage, "to return to the story of the @tt{(beam)} spell.  Show it to me again on your surface."}

  @code-block{
    (beam)
  }

  @p{"A deceptively simple @b{Spell}," said the Arch Mage.  "So much of its journey is @b{Invisible}.
  And, as is often the case, it is best for us to understand that journey by slicing it in half.
  I will call the first part @b{Compilation} and the second part @b{Interpretation}.  Two more kinds of @b{Magic}."}

  @p{The boy's face fell.  "Two more!"}

  @p{"I'm afraid so," said the Arch Mage.  "But is it really so bad?"}

  @p{"Two more kinds means there are really @i{eight} now!  You seem to think that slicing things in half leads to simplicity, but
  I'm beginning to think it makes things more complicated." He began listing: "@b{Invisible Aetherial Compilation},
  @b{Invisible Aetherial Interpretation}, @b{Invisible Worldly Compilation}, @b{Invisible Wordly Interp--}"}

  @p{"Yes, yes," said the Arch Mage.  "No need to list them all.  Luckily, not all are equally important.
  The @tt{(beam)} spell was created by--"}

  @p{"The @tt{(beam)} @b{Spell} was @i{created}," exclaimed the young wizard.  "By who?  How do you create new @b{Spells}?"}

  @p{"I can see this lesson has begun to overwhelm. You need some sleep."  He silenced the boy's protests
 with a wave of his hand.  "I will tell you the story of how @b{Spells} are created some other time.  Before our
  next lesson, I want you to check out a tome from the academy library.  It is called
  @i{Exegesis and Critiques of the Popular 'Aetherial Compilation / Worldly Interpretation Model' for Spell System Construction}"}

  @p{The boy gulped.}

  @p{"Just read the intro," said the Arch Mage.  "Under this well-known model, @b{Compilation} happens in solely in the @b{Aether}
  and @b{Interpretation} happens solely in the @b{World}.  Come prepared to tell me why that is.  Oh, and have the
  canonical definitions of @b{Compilation} and @b{Interpretation} memorized."}
  
  @p{The boy turned to leave, eyes glazed over.  "Thank you, Arch Mage," he murmured.}


 @p{- Stephen R. Foster}
 @(logo 200)
 })



