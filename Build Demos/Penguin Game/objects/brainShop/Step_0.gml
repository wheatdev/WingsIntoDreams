if state = 0{
	if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")){
		state = 1
		if type = 1{
			if selectX = -1 and selectY = 0{
				cindex = 0
			}
			if selectX = 1 and selectY = 0{
				global.playerStartX = 1664
				global.playerStartY = 480
				room_goto(HUB1)	
			}
			if selectX = -1 and selectY = 1{
				if global.minesUnlock < 1{
					if global.theMoney > 149{
						global.theMoney = global.theMoney - 150
						global.minesUnlock = 1
						cindex = 0
					}
					else{
						cindex = 22
					}
				}
				else{
					cindex = 1
				}
			}
			if selectX = -1 and selectY = 2{
				if global.storyProgress < 4{
					if global.theMoney > 299{
						global.theMoney = global.theMoney - 300
						global.storyProgress = 4
						cindex = 11
					}
					else{
						cindex = 22
					}
				}
				else{
					cindex = 12
				}
			}
			if selectX = -1 and selectY = 3{
				if global.SFQ < 1{
					global.SFQ = 1
					global.theMoney = global.theMoney + 500
					cindex = 28
				}
				if global.minesUnlock = 3{
					global.minesUnlock = 4
					global.theMoney = global.theMoney + 4000
					cindex = 33
				}
				if global.storyProgress = 6{
					global.storyProgress = 7
					cindex = 39
				}
			}
		}
		state = 1
	}
	if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up){
		selectY = selectY - 1
	}
	if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down){
		selectY = selectY + 1
	}
	if keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right){
		selectX = selectX * -1
	}
}
if state = 1{
	if words = "BREAK"{
		state = 0	
	}
	if type = 1{
		if cindex = 0{
			words = ""
			words2 = ""
			words3 = ""
		}
		if cindex = 1{
			words = "150 Don, eh? Let's see..."
			words2 = "Hoho! I've got it."
			words3 = "I'll tell you all I know about the old mines."
			icon = 1
		}
		if cindex = 2{
			words = "Back before this isle was covered in Ice, it was"
			words2 = "abundant in natural resources."
			words3 = "In paticular, Gold!"
			icon = 1
		}
		if cindex = 3{
			words = "For reference, a single gold bar is worth 200 Don!"
			words2 = "That's more than you paid me for this advice!"
			words3 = ""
		}
		if cindex = 4{
			words = "..."
			words2 = "Maybe you should rethink your buisiness strategy, Walter."
			words3 = ""
			icon = 0
		}
		if cindex = 5{
			words = "..."
			words2 = "Ahem."
			words3 = ""
			icon = 1
		}
		if cindex = 6{
			words = "They found a huge deposit of Gold underground."
			words2 = "So, they went and opened up a mine."
			words3 = "The entrance to the mine is just to the right of us."
			
		}
		if cindex = 7{
			words = "And the best part is, they"
			words2 = "never finished clearing out all the gold!"
			words3 = "And for someone of your talents...."
		}
		if cindex = 8{
			words = "EAZZZZZZZZZZZZY MONEYYYYYYY!!!!"
			words2 = ""
			words3 = ""
			icon = 0
		}
		if cindex = 9{
			words = "Atta boy!"
			words2 = ""
			words3 = ""
			icon = 1
		}
		if cindex = 10{
			words = "BREAK"
			words2 = ""
			words3 = ""
		}
		if cindex = 11{
			words = ""
			words2 = ""
			words3 = ""
		}
		if cindex = 12{
			words = "300 Don! That's quite a bit..."
			words2 = "Let me think...."
			words3 = "Hoho! This might instrest you."
			icon = 1
		}
		if cindex = 13{
			words = "When this isle was first covered in ice,"
			words2 = "A group of scientists from the Mainland came"
			words3 = "to determine what had happened."
			icon = 1
		}
		if cindex = 14{
			words = "They managed to trace the source of the ice to a chasm,"
			words2 = "deep within the caves. But, the hole was so deep that"
			words3 = "nobody dared to venture into it."
		}
		if cindex = 15{
			words = "If only they had some of my Escape Ropes handy, eh?"
			words2 = "Then they could have gone down, checked it out,"
			words3 = "and then just warped right back! Hoho! "
		}
		if cindex = 16{
			words = "One of the scientists swore that he saw a temple of sorts "
			words2 = "at the bottom of the chasm. Any treasure found would be"
			words3 = "verifiably ancient!"
		}
		if cindex = 17{
			words = "To reach the chasm, you'd need to pass through the Conic Caves."
			words2 = "They're down and to the right of us."
			words3 = ""
		}
		if cindex = 18{
			words = "The entrance to chasm would be on the ground."
			words2 = "So try to stay low, or in the water. Be careful of the"
			words3 = "Orcas, though. They're deadly!"
		}
		if cindex = 19{
			words = "I guess it wouldn't be the worst idea in the world to"
			words2 = "try to stay up high either, to keep away from 'em."
			words3 = ""
		}
		if cindex = 20{
			words = "Stay low, but go high."
			words2 = "Thanks for the tip, Walter."
			words3 = ""
			icon = 0
		}
		if cindex = 21{
			words = "BREAK"
			words2 = ""
			words3 = ""
		}
		if cindex = 22{
			words = ""
			words2 = ""
			words3 = ""
		}
		if cindex = 23{
			words = "Dipp, what're you tryin' to pull?"
			words2 = "Don first, then you get the advice."
			words3 = ""
			icon = 1
		}
		if cindex = 24{
			words = "Walter. Buddy. Pal. Chum. Amigo."
			words2 = "Um... Other word for friend."
			words3 = "I do not have the Don right now."
			icon = 0
		}
		if cindex = 25{
			words = "But if you just..."
			words2 = ""
			words3 = ""
		}
		if cindex = 26{
			words = "No ''Buts'', lad."
			words2 = "You want my buissiness, you need to pay up."
			words3 = "You're a good kid, but a man's gotta make a living."
			icon = 1
		}
		if cindex = 27{
			words = "BREAK"
			words2 = ""
			words3 = ""
		}
		if cindex = 28{
			words = ""
			words2 = ""
			words3 = ""
		}
		if cindex = 29{
			words = "Yo, Walter. I found this treasure chest in the "
			words2 = "Security Room. You think it's worth anything?"
			words3 = ""
			icon = 0
			global.cutsceneTimer = 1
		}
		if cindex = 30{
			words = "Well, give it here lad, and I'll look through it."
			words2 = "Hm..."
			words3 = ""
			icon = 1
			global.cutsceneTimer = 2
		}
		if cindex = 31{
			words = "This seems to be a bunch of old legal documents..."
			words2 = "This one's a deed... Seems they were as unprofitable as the "
			words3 = "rumors say. I can give you 500 Don for all this."
			global.cutsceneTimer = 0
		}
		if cindex = 32{
			words = "BREAK"
			words2 = ""
			words3 = ""
		}
		if cindex = 33{
			words = ""
			words2 = ""
			words3 = ""
		}
		if cindex = 34{
			words = "Jeez Louise kid, what happened to you?"
			words2 = "You look like a castle just crashed and crumbled around you."
			words3 = ""
			icon = 1
			global.cutsceneTimer = 3
		}
		if cindex = 35{
			words = "Flesh-eating slimes... in the mines..."
			words2 = "Huff... Huff..."
			words3 = "They looked... like gold..."
			icon = 0
		}
		if cindex = 36{
			words = "..."
			words2 = "You... don't seem to be joking."
			words3 = "W-well, I'm glad to see that you're okay, lad."
			icon = 1
		}
		if cindex = 37{
			words = "If I had known about flesh-eating gold slimes, that place"
			words2 = "would have been locked down tight! Here's 4,000 Don."
			words3 = "Now take a good, long rest, lad."
		}
		if cindex = 38{
			words = "BREAK"
			words2 = ""
			words3 = ""
			global.cutsceneTimer = 0
		}
		if cindex = 39{
			words = ""
			words2 = ""
			words3 = ""
		}
		if cindex = 40{
			words = "Walter, I found this thing in an old temple in the caves."
			words2 = "What can you give me for it?"
			words3 = ""
			icon = 0
			global.cutsceneTimer = 1
		}
		if cindex = 41{
			words = "..."
			words2 = "... I can't believe it..."
			words3 = "Lad, I don't think I can give you anything for that."
			icon = 1
		}
		if cindex = 42{
			words = "What??? But it's so big and shiny!"
			words2 = "And I worked my butt off to get it!"
			words3 = "It's gotta be worth something!"
			icon = 0
		}
		if cindex = 43{
			words = "That's the thing of it, Dipp!"
			words2 = "It's TOO Valuable!"
			words3 = "I don't have enough Don to pay you for it!"
			icon = 1
			global.cutsceneTimer = 4
		}
		if cindex = 44{
			words = "I'll tell you what though."
			words2 = "I'll get you a ticket for the Donner Ship. Free of charge."
			words3 = "You'll go to the mainland! Sell it there! And get rich!"
			global.cutsceneTimer = 0
		}
		if cindex = 45{
			words = "The Donner Ship docks by the platform"
			words2 = "up and to the right of us."
			words3 = "Speak to the captain, he's a good friend of mine."
		}
		if cindex = 46{
			words = "BREAK"
			words2 = ""
			words3 = ""
		}
		
		
	}
	if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")){
		cindex = cindex + 1
	}
}

if keyboard_check(vk_escape){
	game_end()
}
if keyboard_check_pressed(ord("F")){
	global.fullscreen = global.fullscreen * -1
}
if global.fullscreen = 1{
	window_set_fullscreen(true)
}
if global.fullscreen = -1{
	window_set_fullscreen(false)
}
