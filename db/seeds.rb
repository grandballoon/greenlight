tommy = Producer.create(name: "Tommy Showbiz")
sally = Producer.create(name: "Sally Showbiz")

horror = Genre.create(name: "Horror")
drama = Genre.create(name: "Drama")
fantasy = Genre.create(name: "Fantasy")
reality = Genre.create(name: "Reality")
gameshow = Genre.create(name: "Gameshow")
comedy = Genre.create(name: "Comedy")
documentary = Genre.create(name: "Genre")


#DRAMA TROPES
achilles = Trope.create(name: "Achilles Heel", description: "A seemingly invulnerable character has a single weakness", genre: drama)
always_murder = Trope.create(name: "Always Murder", description: "By the end of the episode, someone is going to die", genre: drama)
one_man = Trope.create(name: "As Long As There Is One", description: "A single courageous individual remains to resist the Big Bad's final takeover, inspiring their fellow citizens to take up arms", genre: drama)
big_word = Trope.create(name: "Big Word Shout", description: "A character shouts a single word very loudly, usually 'NO' or 'WHY' or 'NEVER'", genre: drama)
chosen_one = Trope.create(name: "The Chosen One", description: "A single individual is chosen or prophecied to attain heroic heights", genre: drama)
finger_twitch = Trope.create(name: "Finger-Twitching Revival", description: "An unconscious character's finger gives a feeble twitch, heralding a return to life", genre: drama)
inspector = Trope.create(name: "The Inspector is Coming", description: "An influential or otherwise authoritative critic or inspector is imminently arriving at the heroes' establishment", genre: drama)
lonely = Trope.create(name: "Lonely Piano Piece", description: "Is the hero losing the battle against the villain? Has horrible news about a beloved character just been revealed? Cue the Lonely Piano Piece", genre: drama)
mysterious_parent = Trope.create(name: "Mysterious Parent", description: "A protagonist's missing parent, vaguely alluded to until now, is suddenly revealed, with shocking implications", genre: drama)



montage = Trope.create(name: "Time for a Montage", description: "Is there too much work to do? Has the hero finally accepted their quest? Is the broken-down establishment in need of a fix-up? Time for a montage", genre: comedy)
