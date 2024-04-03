if type = 1{
	if  playerCutscene.x > 150 and conversationIndex > 3{
		active = 2
	}
	if active = 1{
		if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")){
			conversationIndex = conversationIndex + 1
		}
		if conversationIndex = 0{
			if set = 0{
				words = "Welcome back, Dipp. How was the Spring Factory?"
			}
			if set = 6{
				words = "You're back. Took your sweet time."
			}
		}
		if conversationIndex = 1{
			words = "You get the treasure?"
		}
		if conversationIndex = 2{
			if set = 0{	
				words = "Nice. Here's your cut. 500 Don, as promised."
			}
			if set = 6{
				words = "Goodness, that thing looks expensive. More than I've got, for sure."	
			}
		}
		if conversationIndex = 3{
			if set = 0{	
				words = "I've got some stuff in. Feel free to browze."
			}
			if set = 1{
				words = "I hear they never finished clearing the gold out of the old mine."
			}
			if set = 2{	
				words = "I've heard talk of an ancient temple, under the Conic Caves."
			}
			if set = 3{
				words = "Who do you take me for?! Nothing in life is cheap, Dipp!"
			}
			if set = 4{
				words = "What are you trying to pull?"
			}
			if set = 5{
				words = "Go on, Dipp! There's treasure to find!"	
			}
			if set = 6{
				words = "Go to the Donner Ship. Sell it on the mainland. My treat."
			}
		}
	}
	if active = 2{
		if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")){
			active = 3
		}
		if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up){
			selectY = selectY - 1
		}
		if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down){
			selectY = selectY + 1
		}
	}
	if active = 3{
		if selectY = 1{
			if global.minesUnlock = 0{
				if global.theMoney > 149{
					global.theMoney = global.theMoney - 150
					global.minesUnlock = 1
					conversationIndex = 3
					set = 1
					active = 1
				}
				else{
					conversationIndex = 3
					set = 3
					active = 1
				}
			}
			else{
				conversationIndex = 3
				set = 1
				active = 1
			}
		}
		if selectY = 2{
			if global.storyProgress < 4{
				if global.theMoney > 299{
					global.theMoney = global.theMoney - 300
					global.storyProgress = 4
					conversationIndex = 3
					set = 2
					active = 1
				}
				else{
					conversationIndex = 3
					set = 3
					active = 1
				}	
			}
			else{
				conversationIndex = 3
				set = 2
				active = 1
			}
		}
		if selectY = 3 {
			if global.escapeRope = 0 and global.theMoney > 49{
				global.theMoney = global.theMoney - 50
				global.escapeRope = 1
				active = 2
			}
			else{
				conversationIndex = 3
				set = 4
				active = 1
			}
		}
		if selectY = 4{
			if global.arcade1 = 0 and global.theMoney > 199{
				global.theMoney = global.theMoney - 200
				global.arcade1 = 1
				active = 2
			}
			else{
				conversationIndex = 3
				set = 4
				active = 1
			}
		}
		if selectY = 5{
			if global.storyProgress < 7{
				set = 6
				conversationIndex = 0
			}
			if global.storyProgress < 6{
				conversationIndex = 3
				set = 5
			}
			active = 1
		}
		if selectY = 6{
			room_goto(worldMap)
		}
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
