if state = 0{
	if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1){
		state = 1
		if type = 1{
			if selectX = -1 and selectY = 0{
				cindex = 0
			}
			if selectX = 1 and selectY = 0{
				global.playerStartX = 4480
				global.playerStartY = 1472
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
			if selectX = 1 and selectY = 1{
				if global.escapeRope = 0 and global.theMoney > 49{
					global.theMoney = global.theMoney - 50
					global.escapeRope = 1
					cindex = 47
				}
			}
			if selectY = 2 and selectX = 1{
				if global.arcade1 < 1 and global.theMoney > 199{
					global.theMoney = global.theMoney - 200
					global.arcade1 = 1
					cindex = 51
				}
			}
			if selectX = 1 and selectY = 3{
				if global.skyUnlock =0 and global.theMoney > 1999{
					global.theMoney = global.theMoney - 2000
					global.skyUnlock = 1
					cindex = 57
				}
			}
		}
		if type = 2{
			if selectX = -1 and selectY = 0{
				cindex = 0
			}
			if selectX = 1 and selectY = 0{
				global.playerStartX = 1760
				global.playerStartY = 15840
				room_goto(skyHighHunting)	
			}
			if selectX = -1 and selectY = 1 and global.upgrade15Get = 0 and global.theMoney > 999{
				global.upgrade15Get = 1
				global.upgrade = global.upgrade + 1
				global.theMoney = global.theMoney - 1000
				cindex = 0
			}
			if selectX = 1 and selectY = 1 and global.leftovers = 0 and global.theMoney > 499{
				global.leftovers = 1
				global.theMoney = global.theMoney - 500
				cindex = 6
			}
			if selectX = -1 and selectY = 2 and global.dippCloudGet = 0 and global.theMoney > 1999{
				global.dippCloudGet = 1
				global.theMoney = global.theMoney - 2000
				cindex = 14
			}
				
		}
		state = 1
	}
	if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu){
		selectY = selectY - 1
	}
	if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd){
		selectY = selectY + 1
	}
	if keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right) or gamepad_button_check_pressed(0,gp_padl) or gamepad_button_check_pressed(0,gp_padr){
		selectX = selectX * -1
	}
}
if state = 1{
	if words = "BREAK"{
		room_restart()
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
			words2 = "A group of scientists from the Suenos came"
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
			words = "To reach the chasm, you'd need to pass"
			words2 = "through the Conic Caves."
			words3 = "They're down and to the right of us."
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
			words = "Stay low, but also go high."
			words2 = "I think you're going senile, Walter."
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
			words3 = "You'll go to the Suenos! Sell it there! And get rich!"
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
		if cindex = 47{
			words = ""
			words2 = ""
			words3 = ""
		}
		if cindex = 48{
			words = "Ah, the humble Escape Rope!"
			words2 = "You plannin' on getting lost soon, boy?"
			words3 = "Hohoho!"
			icon = 1
		}
		if cindex = 49{
			words = "They're one time use, but pretty handy!"
			words2 = "They'll take you back to civilization when used."
			words3 = "Just remember to come back for another!"
		}
		if cindex = 50{
			words = "BREAK"
			words2 = ""
			words3 = ""
		}
		if cindex = 51{
			words = ""
			words2 = ""
			words3 = ""
		}
		if cindex = 52{
			words = "Hoho! Finally saved up enough for this arcade"
			words2 = "cabinet, eh? This one's pretty old, but still"
			words3 = "pretty popular with youngins'!"
			icon = 1
		}
		if cindex = 53{
			words = "It takes a lot of Spirit, but you too can be"
			words2 = "a Game Master!"
			words3 = ""
		}
		if cindex = 54{
			words = "Is that a reference to something, Walter?"
			words2 = "If it's a reference I don't get it."
			words3 = ""
			icon = 0
		}
		if cindex = 55{
			words = "Er, just play the game."
			words2 = "If you know, you'll know."
			words3 = ""
			icon = 1
		}
		if cindex = 56{
			words = "BREAK"
			words2 = ""
			words3 = ""
		}
		if cindex = 57{
			words = ""
			words2 = ""
			words3 = ""
		}
		if cindex = 58{
			words = "Walter, could I, perchane, have"
			words2 = "that pot you have over there?"
			words3 = ""
			icon = 0
		}
		if cindex = 59{
			words = "Dipp, for the last time, you cannot"
			words2 = "have a ''hit'' of my icicle."
			words3 = "They're not good for you!"
			icon = 1
		}
		if cindex = 60{
			words = "No, Walter. I mean the physical pot"
			words2 = " you've got back there. Like, for "
			words3 = "plants and stuff."
			icon = 0
		}
		if cindex = 61{
			words = "O-oh! Er, well. Sure, I don't see why not."
			words2 = "This did just fall out of the sky one day.."
			words3 = "Maybe there's something magical about it...?"
			icon = 1
		}
		if cindex = 62{
			words = "Plant a seed, and hit it from below, to see"
			words2 = "what happens!"
			words3 = ""
		}
		if cindex = 63{
			words = "Sweet! And can I also have a lick of"
			words2 = "the icile?"
			words3 = ""
			icon = 0
		}
		if cindex = 64{
			words = "..."
			words2 = ""
			words3 = "No. Get out."
			icon = 1
		}
		if cindex = 65{
			words = "BREAK"
			words2 = ""
			words3 = ""
		}
	}
	if type = 2{
		if cindex = 0{
			words = ""
			words2 = ""
			words3 = ""
		}
		if cindex = 1{
			words = "Oh, you're actually interested in this thing?"
			words2 = "I found it in a really hard to reach spot, that"
			words3 = "seems to be common for these things."
		}
		if cindex = 2{
			words = "It's called an upgrade capsule. You can use this to"
			words2 = "increase your attack, speed, health, or special stats."
			words3 = ""
		}
		if cindex = 3{
			words = "I'd use it myself, but I've got no real use for it."
			words2 = "You seem like the adventourous type, so I'll give it"
			words3 = "to you at a discount."
		}
		if cindex = 4{
			words = "That's... actually really nice of you."
			words2 = ""
			words3 = "Thank you....?"
		}
		if cindex = 5{
			words = "BREAK"
			words2 = ""
			words3 = ""
		}
		if cindex = 6{
			words = ""
			words2 = ""
			words3 = ""
		}
		if cindex = 7{
			words = "Hey, what's that? It looks good."
			words2 = "Smells good too..."
			words3 = "Probabbly tastes good..."
		}
		if cindex = 8{
			words = "Oh, this? It's some apple pie my daughter made."
			words2 = "It's absolutely delicious. I'd be willing to"
			words3 = "part with a slice for... 500 Don?"
		}
		if cindex = 9{
			words = "..."
			words2 = "It does look really good..."
			words3 = "You've got yourself a deal, lady!"
		}
		if cindex = 10{
			words = "*OM NOM NOM*"
			words2 = "..."
			words3 = "This is the greatest meal I've had in my life."
		}
		if cindex = 11{
			words = "Hahaha! That good, huh? I'll tell my daughter"
			words2 = "you said that. Here, take a little bit extra."
			words3 = ""
		}
		if cindex = 12{
			words = "I'm sure if you eat that while exploring, "
			words2 = "your health and special will be completely restored!"
			words3 = ""
		}
		if cindex = 13{
			words = "BREAK"
			words2 = ""
			words3 = ""
		}
		if cindex = 14{
			words = ""
			words2 = ""
			words3 = ""
		}
		if cindex = 15{
			words = "Say, you managed to touch the Cloud Amulet, right?"
			words2 = "That probabbly means you absorbed some of it's "
			words3 = "essence..."
		}
		if cindex = 16{
			words = "So?"
			words2 = ""
			words3 = ""
		}
		if cindex = 17{
			words = "Well, if you're interested, I could teach you a"
			words2 = "trick you could do with that essence."
			words3 = "For a fee, of course."
		}
		if cindex = 18{
			words = "You'd be able to make one of those cloud platforms"
			words2 = "that you see outside."
			words3 = ""
		}
		if cindex = 19{
			words = "Oh! That sounds awesome!"
			words2 = "Teach me, teach me!"
			words3 = ""
		}
		if cindex = 20{
			words = "BREAK"
			words2 = ""
			words3 = ""
		}
		
		
	}
	if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1){
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
