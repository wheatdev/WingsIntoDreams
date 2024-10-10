if global.cameraActive = 1{
	x = Player.x
	y = Player.y
}
draw_set_font(MenuFontSmall)
draw_set_color(c_white)
if type = 1{
	if x > 3600{
		cindex = 2
	}
	if x > 4500{
		cindex = 3	
	}
	if x > 5200{
		cindex = 4	
	}
	if x > 6300{
		cindex = 5	
	}
	if x > 8900{
		cindex = 6
	}	
	if x > 9400{
		cindex = 7	
	}
	if x > 10500{
		cindex = 8	
	}
	if x > 12300{
		cindex = 9 
	}	
	if x > 14000{
		cindex = 11	
	}
	if x > 15000{
		cindex = 12	
	}
	if cindex = 0{
		words = "Begining functional evaluation of A2C-P.GU.M-004."
		words2 = "Evaluating intellegence and physical capabilites."
		words3 = "A2C-P.GU.M-004, can you hear me?"
		timer = timer + 1	
		if timer > 300{
			cindex = 1
		}
	}
	if cindex = 1{
		words = "You can move left and right with the arrow keys, the"
		words2 = "the ''A'' and ''D'' keys, or the D-Pad."
		words3 = "Try moving to the right now."
	}
	if cindex = 2{
		timer = 0
		words = "Good, good!"
		words2 = "You seem to be intellegent enough."
		words3 = "Keep on going to the right."	
	}
	if cindex = 3{
		words = "Here, we have a small ledge."
		words2 = "You can jump over it with the ''I'' or ''Z''"
		words3 = "keys, or with the bottom face button."
	}
	if cindex = 4{
		words = "Yes! Yes! You're doing very well, A2C-P.GU.M-004!"
		words2 = "There's another higher ledge coming up. But, you"
		words3 = "can clear it easily, can't you?"
	}
	if cindex = 5{
		words = "Magnificent, A2C-P.GU.M-004! There's a barrier coming"
		words2 = "up that will push you back. Use the ''P'' or ''C'' keys,"
		words3 = "or the right face button, to use your built-in boosters!"
	}
	if cindex = 6{
		words = "This ledge here is too high to jump over. Pause the game"
		words2 = "with the ''Enter'', ''Space'', or ''Start'' Button, and"
		words3 = "then select a different special move from the sub-menu."
	}
	if cindex = 7{
		words = "Impressive! Using specials consumes the Special Meter"
		words2 = "so try not to over-extert yourself. These floating coins"
		words3 = "are called ''Don''. They're the local currency."
		timer = timer + 1
		if timer > 400{
			cindex = 8
		} 
	}
	if cindex = 8{
		words = "Try to collect as much Don as you can!"
		words2 = "You'll be able to use it to buy powerful items, or"
		words3 = "information on new, unexplored areas or enemies."
	}
	if cindex = 9{
		words = "Speaking of enemies, there are some of my other"
		words2 = "robots coming up. You won't be able to advance"
		words3 = "without defeating them."
		timer = timer + 1
		if timer > 400{
			cindex = 10	
		}
	}
	if cindex = 10{
		words = "Use ''O'', ''X'' or the left face button to attack."
		words2 = "Pressing a different direction can also change the"
		words3 = "type of attack you do."
	}
	if cindex = 11{
		words = "Up ahead, those are hearts."
		words2 = "They're ususally dropped by fallen enemies."
		words3 = "They'll restore some of your health when you're damaged."
		timer = 0 
	}
	if cindex = 12{
		words = "This is an upgrade capsule. You can find them in lots of"
		words2 = "hard to reach areas. You can use them to upgrade your"
		words3 = "stats from the pause menu."
		timer = timer + 1
		if timer > 300{
			cindex = 13	
		}
	}
	if cindex = 13{
		words = "Alright, A2C-P.GU.M-004. Behind this door is your final "
		words2 = "trial. It's an earlier model in the A2C series. Once"
		words3 = "you beat him, your training will be deemed a success."
		timer = timer + 1
		if timer > 600{
			cindex = 14	
		}
	}
	if cindex = 14{
		words = "Based off of your performance so far, it should be a "
		words2 = "piece of cake for you."
		words3 = "Good luck!"
		global.dialouge = 0
	
	}
}