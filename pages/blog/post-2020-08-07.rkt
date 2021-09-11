#lang at-exp racket

(require "./lang.rkt")


(define-post 
  2020-08-07
  "The CodeSpells Story (with Pictures!)"
  @div{
    The CodeSpells story began more than 10 years ago.  What happened?  And what's coming? 
  }
  @div{
    
    @h4{Chapter 0: The Undergraduate Prototype}

    @p{I was a junior at @a[href: "https://southwestern.edu"]{Southwestern University}
    majoring in philosophy and computer science.  One night, I was playing a meta-game
    called @a[href: "https://en.wikipedia.org/wiki/Nomic"]{Nomic} with some
    fellow computer scientists and philosophers.}

    @p{
    Given that Nomic is a game about making up new rules while you play the game,
    it was natural for us to conjecture that it should be possible to create a 
    computer game that you reprogram as you play. 
    We went on to build an early prototype of this game using 
    @a[href: "https://jmonkeyengine.org/"]{JMonkeyEngine} -- which appealed to us
    because Java was the one language we all knew.
    }

    The only remnants I can find of this "game" are some screenshots I posted to
    my Facebook circa 2007.

    @(image-grid
       (cons img:village.jpg 
	     @p{
	     A village with assets created by my girlfriend at the time, Whitney Johnson.})

       (cons img:fish-on-a-mountain.jpg 
	     @p{
	     A fish flopping on a mountain, for no particular reason that I can recall.
	     })

       (cons img:cottage-close-up.jpg 
	     @p{
	     A close-up of that cottage.  Adorable.  Brings back memories.
	     })

; @jesscxc(ty21.9.11.19.44.00pzm4d6s)
; comment out some 'statues' so it's safer-for-work for livestreamers to show
#|
       (cons img:penis1.jpg 
	     @p{
	     A magestic statue of a golden penis, sculpted lovingly in an ancient version of Blender by my girlfriend at the time. 
	     })

       (cons img:penis2.jpg 
	     @p{
	     The same statue, looking small from far away.  Valley for scale.
	     })

       (cons img:penis3.jpg 
	     @p{
	     Penis and sunrise.  Need I remind you we were undergrads?
	     })

       (cons img:penis4.jpg 
	     @p{
	     Penis and snow. *shiver*
	     })
#|
       )

    @p{Alas, like Icarus flying too close to the sun, we weren't able to complete
    the game.  Our wings (our feeble undergraduate-level skills) were too weak.
    And the sun was too hot: Creating a game is hard, creating programming environments
    is hard, and creating a seamless experience between the two is hard.}

    @p{I'm sad to say that we gave up shortly after enabling users to spawn statues.}

    @h4{Chapter 1: The Research Prototype}

    @p{About 6 years later, in graduate school, I was doing my Ph.D. research at the 
    University of California, San Diego.  My labmate Sarah Esper (now Sarah Guthals) 
    and I were discussing educational coding environments.  The idea of 
    programmable games resurfaced.  We both agreed that the metaphor of magic
    was a compelling one.  And so, CodeSpells was born.}

    @p{You can still find the @a[href: "https://github.com/srfoster/CodeSpells"]{old source code on my github}.  It probably doesn't run anymore -- except maybe on an ancient version of the Unity game engine.}

    @p{But it served its purpose as a research tool for investigating how novice coders
    learn programming in the context of immersive fantasy games.  The papers we published on the topic are forever part of the scientific literature and can be found in the @a[href: "https://dl.acm.org/"]{ACM's Digital Library}.}

    @p{The game contained one level -- a small village popluated by "gnomes."  I couldn't find free 3D gnome models, so being a
    starving grad student, I opted for the most gnome-like thing I could find that happened to be free.  The results were aesthetically questionable.}

    @(image-grid
       (cons img:gnome-red.png 
	     @p{
	     A creepy gnome.  It cost me nothing.  The nightmares came for free.
	     })

       (cons img:gnome-water.jpg 
	     @p{
	     Here's one that watches you while you swim in the pond.
	     })

       (cons img:gnome-injured.jpg 
	     @p{
	     Here's one with bandaids on its face.  Don't let it distract you from the spell inventory and minimap on the right.
	     })  


       (cons img:gnome-village.png 
	     @p{
	     Oh, and here's the gnome village.  Notice the familiar cottages which I ported from my undergraduate prototype.
	     }))

    @p{The coding runtime was the Java runtime, 
    so the natural thing to do was to have player code in the Java language.  We justified this in our research papers
    by saying that "Java is an industry standard language."  But I wasn't convinced then, nor am I now.}

    @p{There's just something a bit lame about booting up an immersive fantasy game and being confronted by
    the syntax of a well-known programming language.  Why do the people of this fantasy world write their spells in Java?
    Did Sun Microsystems invent magic?  Tolkien would not have approved of our lackluster worldbuilding.}

    @p{The one thing I @i{did} like was that the in-game documentation took the form of a spellbook out of which you could 
    copy spells and edit them in game.}
    
    @side-note{
      @h5{(soap box)}
      @(hr)

      I've always felt that too much time gets spent "making coding fun."  @b{We should be making documentation fun instead.}}  

    @p{Not to toot my own horn, but these docs do look a lot more fun than anything I've come across in the professional world.  (You agree; admit it!)}

    @(img:old-spellbook.jpeg style: (properties margin: "auto" padding: 20 display: "block") width: "100%")

    @p{Still, I always felt the game could be better than a Java-centric tool for exploring how kids learn Java in a world full of scary gnomes who use Java magic.
    And one day, it happened.}

    @h4{Chapter 2: The Kickstarter Prototype}

    @p{I contacted my long-time friend, Adrian Lopez-Mobilia, who had worked with me on the undergrad prototype (the one with the penises).
    In the intervening years, he had become a skilled indie game developer.  He brought his long-time friend and environment artist, Jason Rosenstock.  }

    @p{The three of us built yet another CodeSpells prototype from the ground up -- this time in Unity3D.  We decided the spells would be written not with Java, 
    but with JavaScript, and that we would use Blockly to give the player less of a "Umm, why are spells crafted with the same language as websites?" experience. 
    It sort of worked.  Blockly does have more of a mystical "mouthfeel" than Java or JavaScript.  Tolkien still would have hated it -- a thought that keeps me up at night to this day -- and which I want to fix in the next iteration of CodeSpells.}

    @p{We used this prototype to create a compelling Kickstarter campaign and received $164,000 in funding.  After subtracting Kickstarter's 5% fee and the 5% payment processing fee, this was sufficient to support 4 people (2 developers, 1 artist, and 1 marketing / social media person) for 2 years. (I know $164K sounds like a lot, but I'll let you do the math to figure out whether any of us were making anywhere near a living wage.)}

    @(image-grid
       (cons img:air-wizard.jpg 
	     @p{A wizard summoning a storm.}) 
       (cons img:big-creatures.jpg
	     @p{
	       Epic creatures.  For a while I had a full-sized poster of this hanging in my bedroom.
	     })
       (cons img:cool-arch.png
	     @p{
               Jason was obsessed with rocks and architecture, which shows through in-game. 
	     })
       (cons img:dust-mote.png
	     @p{
               This was a concept for a wizard "home base" -- a small haven where you go when you're not exploring procedurally generated worlds.
	     })
       (cons img:night-time-wizard.png
	     @p{
               Wizards at night.  The day/night cycle in the game is one of the most magical parts of the whole experience.
	     })
       (cons img:three-wizards.png
	     @p{
               Three wizards crafting spells upon a cliff.
	     })
       (cons img:wizard-with-croaker.png
	     @p{
	       A wizard with a pet croaker.   
	     })
       (cons img:wolf-crows.png
	     @p{
	       An unimplemented concept piece for a symbiotic "creature system" that was part-wolf, part-crow. 
	     }))

    @p{The game had some initial success on Steam, but it was short lived.}

    @(ul
    @li{A pirated copy of the game was released -- which caused sales to tank.  Even after we implemented digital rights management and issued countless DCMA take-down notices, sales never recovered.}

    @li{We managed to make a beautiful sandbox experience but struggled to figure out how to create a fun gaming experience on top of that.  In an attempt to do so, we added multiplayer support, but this increased monetary costs (i.e. cloud servers).  And it added new technical constraints: anything a spell could do needed to work over the network.}

    @li{We managed to make a reasonable in-game coding experience with Blockly (and JavaScript), and we made a way for users to share spells with each other via the cloud.  But at the end of the day, there still weren't @i{that} many magical things you could code.})

    @p{To this day, the game is @link-to-steam{on Steam}. You can manipulate the terrain heightmap, create running water, shoot colored fireballs, and apply forces to physical objects like rocks.  And you can explore a procedural 3D world that is truly breathtaking.}

    @p{After two years of steady but slow progress, there was no money left, and Adrian and Jason wisely found other jobs (Adrian went to Google and Jason went to Avalanche Studios).}

    @p{The legacy the three of us left behind still inspires me to this day.}

    @(image-grid
       (cons img:in-game1.jpg
	     @p{
	       Wizard with a Croaker. 
	     })
       (cons img:in-game2.jpg
	     @p{
	       A wizard in front of a "Wizard Soccer" goal (part of the multiplayer experience).
	     })
       (cons img:in-game3.jpg
	     @p{
	       A wizard traversing the procedural world and coming upon one of the many strange artifacts left over from a previous civilization.
	     })
       (cons img:in-game4.jpg
	     @p{
	       A wizard at dawn.  
	     })
       (cons img:in-game5.webp
	     @p{
	       A wizard at dusk.
	     })
       (cons img:in-game-coding1.jpg
	     @p{
	       A spell written in Blockly.
	     })
       (cons img:in-game-coding2.gif
	     @p{
	       A spell being constructed in Blockly.
	     }))

    @p{As for me, I run a company called @a[href: "https://thoughtstem.com"]{ThoughtSTEM} with a non-profit branch called @a[href: "https://metacoders.org"]{MetaCoders}.  We have many other products (e.g. @a[href: "https://www.learntomod.com"]{LearnToMod}, @a[href: "https://metacoders.org/online"]{coding after-school programs and summer camps}). Of all of them, CodeSpells has paradoxically:
        @(ol
	   @li{always had the highest cool-factor,}
	   @li{always been on the cutting edge of coding environments, coding education, and codable games, yet}
           @li{always generated the smallest revenue})}

    @p{Since circa 2018, I've had almost no resources to put into further development.  I've received thousands of emails over the years, asking if there will ever be movement on the project.  I've always responded with something vague, like: "Yes. I think so. Someday."} 

    @p{And then... there was COVID-19.}

    @side-note{
    @h5{(yep, it's official)}
    @(hr)
    CodeSpells is back.  A project 13 years in the making.}

    @h4{Chapter 3: The Post-Pandemic CodeSpells}
  
    @p{Stay tuned...}

    @p{- Stephen R. Foster}
    @(logo 200)
    })
