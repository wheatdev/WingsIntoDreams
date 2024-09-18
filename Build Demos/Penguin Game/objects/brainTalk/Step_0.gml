if type = 1{
	if global.talking = 1{
		view_camera[0] = camera_create_view(playerCutscene.x - 800, playerCutscene.y - 550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
	}
	if cindex = 0{
		words = "Alright, this is about where Walter said the "
		words2 = "treasure room should be..."
		words3 = ""
	}
	if cindex = 1{
		words = "All I need to do is not set off any..."
		words2 = "*Click*"
		words3 = "Poo."
	}
	if cindex = 2{
		words = "WARNING: INTRUDER ALERT!"
		words2 = "LEAVE NOW OR FORCE WILL BE USED TO "
		words3 = "FORCE YOUR REMOVAL."
	}
	if cindex = 3{
		words = "Walter, you wide walrus, you said there'd be no "
		words2 = "security... "
		words3 = "... I don't get paid enough for this..."
	}
	if cindex = 4{
		words = "BREAK"
		words2 = ""
		words3 = ""
	}
	if words = "BREAK"{
		global.talking = 0
		global.cutsceneTimer = -2
		global.cameraActive = 1
		instance_create_depth(playerCutscene.x,playerCutscene.y,0,Dipp)
		cindex = 0
	}
}
if type = 2{
	if words = "BREAK"{
		global.talking = 0
		global.cutsceneTimer = -2
		audio_stop_all()
		instance_create_depth(playerCutscene.x,playerCutscene.y,0,Dipp)
		cindex = 4
	}
	if global.dippSnowballGet < 1{
		x = sealFrench.x
		y = sealFrench.y
	}
	if cindex = 0{
		words = "ZUT ALORS!!!"
		words2 = "After all zees years, I 'ave finally been found!"
		words3 = ""
	}
	if cindex = 1{
		words = "Oui! I am ze master criminal."
		words2 = "Moi name ez Don Joint."
		words3 = "I have hidden here with ze haul for many years."
	}
	if cindex = 2{
		words = "Just know, Officer!"
		words2 = "I will not go down without ze fighting!"
		words3 = ""
	}
	if cindex = 3{
		words = "BREAK"
		words2 = ""
		words3 = ""
	}
	if cindex = 4{
		words = "MERCI!!!"
		words2 = ""
		words3 = ""
	}
	if cindex = 5{
		words = "You are sparing my life, no?"
		words2 = "In exchange, I teach you ancient"
		words3 = "art of seal snowball making, no?"
	}
	if cindex = 6{
		words = "He who fights and runs away,"
		words2 = "lives to fight another day!"
		words3 = "Honhonhonhon!!!"
	}
	if cindex = 7{
		global.talking = 0
		global.cutsceneTimer = -3
		instance_create_depth(playerCutscene.x,playerCutscene.y,0,Dipp)
		global.cameraActive = 1
		cindex = 8
	}
}	
if type = 3{
	if global.talking = 1{
		view_camera[0] = camera_create_view(captainDonner.x - 800, captainDonner.y - 550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
	}	
	if words = "BREAK"{
		global.talking = 0
		room_goto(donnerShipInside)
	}
	if cindex = 0{
		if global.dialouge = 1{
			words = "OI! Where do youse think yer goin', brat?!"
			words2 = "You don't see me standin' here?"
			words3 = ""
		}
		else{
			words = "Eyyyyy, you're Walter's kid, right?"
			words2 = "Your name's Dipp, yeah?"
			words3 = ""
		}
	}
	if cindex = 1{
		if global.dialouge = 1{
			words = "No dude, I didn't see you. You're like half my "
			words2 = "size and hiding in the bushes."
			words3 = ""
		}
		else{
			words = "The name's Captain Donner. The ship here's"
			words2 = "the ''Donner Ship''! Finest flying ship"
			words3 = "in the world!"
		}
	}
	if cindex = 2{
		if global.dialouge = 1{
			words = "HAHA! You've definitely got a mouth on you!"
			words2 = "Walter's been raising you 'bout as good as"
			words3 = "I'd expect!"
		}
		else{
			words = "Since you're Walter's boy, I'll fly you to Suenos"
			words2 = "free of charge! I'll also keep yer Cargo safe"
			words3 = "in the lower deck."
		}
	}
	if cindex = 3{
		if global.dialouge = 1{
			words = "Ins any case, the name's Captain Donner. Me an'"
			words2 = "Walter go way back. I'll fly youse to Suenos"
			words3 = "free of charge, as a favor."
		}
		else{
			words = "Niiiiiiice, nice!"
			words2 = "You're a pretty chill dude, Captain."
			words3 = "And your ship's cool."	
		}
	}
	if cindex = 4{
		words = "By the ways, Dipp. Youse a bird as well, ain't ya?"
		words2 = "How fast can you fly?"
		words3 = "Donner Ship over here can go 2,000 miles per hour."
	}
	if cindex = 5{
		words = "I... uh... Can't fly."
		words2 = "Penguins are flightless birds."
		words3 = ""
	}
	if cindex = 6{
		words = "..."
		words2 = ""
		words3 = ""
	}
	if cindex = 7{
		words = "S-sorry 'bout that, lad. Er, let's just"
		words2 = "go ahead and start flyin' to Suenos."
		words3 = ""
	}
	if cindex = 8{
		words = "BREAK"
		words2 = ""
		words3 = ""
	}
}
if type = 5{
	if global.talking = 1{
		view_camera[0] = camera_create_view(33056,-13432, 1600, 900, 0, Dipp, 5, 5, -1, -1)
	}
	if global.cutsceneTimer = -1{
		global.lastPressed = 1
		global.cameraActive = -2
		global.cutsceneTimer = -2
	}
	if cindex = 0{
		words = "I AM SUPRISED YOU HAVE MADE IT THIS FAR."
		words2 = "I WOULD HAVE THOUGHT THAT MY BROTHERS"
		words3 = "WOULD HAVE DESTROYED YOU."
	}
	if cindex = 1{
		words = "BUT IN ANY CASE, I CANNOT ALLOW YOU TO "
		words2 = "INTERFERE ANYMORE IN MY MAKER'S MISSION."
		words3 = ""
	}
	if cindex = 2{
		words = "Dude, what??? You steal MY treasure, and"
		words2 = "I'm the one interfering with YOU?"
		words3 = "I was gonna make bank off that!"
	}
	if cindex = 3{
		words = "THE ''CORE'' WE AQUIRED FROM THE DONNER SHIP"
		words2 = "IS ESSENTIAL FOR OUR ULTIMATE GOAL."
		words3 = ""
	}
	if cindex = 4{
		words = "...Core?"
		words2 = "What the heck is a Core?"
		words3 = "Either way, give it back!"
	}
	if cindex = 5{
		words = "NEGATIVE."
		words2 = "MY OBJECTIVE IS TO RETRIEVE THE ''ICE CORE''."
		words3 = "IF YOU ATTEMPT TO STOP ME..."
	}
	if cindex = 6{
		words = "THEN I WILL SCRAP YOU LIKE YOU DID MY BROTHERS."
		words2 = ""
		words3 = ""
	}
	if cindex = 7{
		instance_create_depth(playerCutscene.x,playerCutscene.y,0,Dipp)
		global.cameraActive = -2
		global.cutsceneTimer = -1
		cindex = 8
	}
	if cindex = 8{
		words = "WARNING: DAMAGE TO EXOTERIOR EXCEEDES"
		words2 = "PROJECTED MAXIMUM."
		words3 = "OVERHEATING. PLEaSE WAiT."
	}
	if cindex = 9{
		words = "Ha.... ha..."
		words2 = "Take that... stupid robot..."
		words3 = "I... am out... of here..."
	}
	if cindex = 10{
		global.cutsceneTimer = 5
		words = "HoSTiLe PeNGuiN eSCaPiNG WiTH CoRe."
		words2 = "eNGaGiNG: aRTiFiCiaL GRaViTY."
		words3 = ""
	}
	if cindex = 11{
		global.cameraActive = 0
		room_goto(hopperHelishipUnderside)
	}
}
if type = 6{
	if global.talking = 1{
		view_camera[0] = camera_create_view(princess.x-300, princess.y -450, 1600, 900, 0, Dipp, 5, 5, -1, -1)
	}		
	if words = "BREAK"{
		global.talking = 0
		global.skyUnlock = 2
		global.cameraActive = 1
		room_restart()
	}
	if words = "BREAK2"{
		global.talking = 0
		global.skyUnlock = 6
		global.cameraActive = 1
		room_restart()
	}
	if cindex = 0{
		words = "Hark! A bird appears! Who art thou?"
		words2 = "Are thee an adventurer?"
		words3 = "Would you care for a quest?"
	}
	if cindex = 1{
		words = "Uh, yeah. I'm an ''adventurer'' of sorts."
		words2 = "And a bird as well."
		words3 = "What quest you need me to do, lady?"
	}
	if cindex = 2{
		words = "Hark! An adventurous Bird Hero!"
		words2 = "The sacred treasure of my kingdom,"
		words3 = "the Cloud Amulet, has been stolen!"
	}
	if cindex = 3{
		words = "The vile Giant has used it's power"
		words2 = "to construct beasts most foul, preventing"
		words3 = "my army from reaching it's Vile Tower."
	}
	if cindex = 4{
		words = "My foot-soldiers have had little luck in"
		words2 = "reaching the tower. But a bird! Why, you"
		words3 = "can just fly to the top, could you not?"
	}
	if cindex = 5{
		words = "..."
		words2 = "Y-yeah. Of course."
		words3 = "I can fly. Totally."
	}
	if cindex = 6{
		words = "Wonderful! Can you go and"
		words2 = "retrieve the Cloud Amulet then?"
		words3 = "It shouldn't be too much issue for a bird."
	}
	if cindex = 7{
		words = "No... problem..."
		words2 = "I'll... be right... back..."
		words3 = ""
	}
	if cindex = 8{
		words = "BREAK"
		words2 = ""
		words3 = ""
		instance_create_depth(playerCutscene.x,playerCutscene.y,0,Dipp)
		cindex = 9
	}
	if cindex = 9{
		words = "Hark! The Bird Hero returns!"
		words2 = "I sense the Cloud Amulet in your possesion."
		words3 = "Here, give it here!" 
	}
	if cindex = 10{
		words = "There, much better."
		words2 = "It looks much nicer on me than that Ugly"
		words3 = "and most Foul looking Giant, does it not?"
	}
	if cindex = 11{
		words = "..."
		words2 = "I see you do not share this sentiment."
		words3 = "Perhaps bird tastes differ from ours..."
	}
	if cindex = 12{
		words = "No matter! You have proven yourself a true"
		words2 = "Hero. As a reward, you may peruse the royal"
		words3 = "shoppe."
	}
	if cindex = 13{
		words = "Hail! Glory be to Dipp, the Hero!"
		words2 = ""
		words3 = ""
	}
	if cindex = 14{
		words = "BREAK2"
		words2 = ""
		words3 = ""
	}
	
	
}
if type = 8{
	if global.itemGet = 1{
		global.talking = 1	
	}
	if words = "BREAK"{
		global.talking = 0 
		instance_create_depth(playerCutscene.x,playerCutscene.y,0,Dipp)
		cindex = 7	
	}
	if cindex = 0{
		words = "Eh? Who're you? A blue bird dude..."
		words2 = "Are you the Hero that my minions"
		words3 = "keep mentionin'?"
	}
	if cindex = 1{
		words = "Those apple dudes are YOUR minions?"
		words2 = "That must mean you're the giant who stole"
		words3 = "the Cloud Amulet, yeah?"
	}
	if cindex = 2{
		words = "Yeah, I stole the Cloud Amulet."
		words2 = "It makes me strong! I feel invincible!"
		words3 = "And it really brings out my eye, yeah?"
	}
	if cindex = 3{
		words = "It does! I like the way it contrasts with your"
		words2 = "skin tone..."
		words3 = "I-I mean!!!"
	}
	if cindex = 4{
		words = "I-I don't suppose you'd be willing to eh..."
		words2 = "G-give it up...?"
		words3 = ""
	}
	if cindex = 5{
		words = "No way, little dude! This Amulet makes me"
		words2 = "the strongest! You want it?"
		words3 = "You're gonna have to pry it offa me!"
	}
	if cindex = 6{
		words = "BREAK"
		words2 = ""
		words3 = ""
	}
	if cindex = 7{
		words = "So... This is the Cloud Amulet, huh?"
		words2 = "I can see what that hot giant chick was"
		words3 = "talking about... I feel stronger already..."
	}
	if cindex = 8{
		words = "This Amulet looks pretty valuable too..."
		words2 = "And the princess and her soldiers are way"
		words3 = "far away... No one would know if I kept it..."
		selectY = 0 
	}
	if cindex = 9{
		words = "Should I keep the Amulet, or Return it?"
		if selectY = 0{
			words2 = "> KEEP IT"	
		}
		else{
			words2 = "KEEP IT"
		}
		if selectY = 1{
			words3 = "> RETURN IT"	
		}
		else{
			words3 = "RETURN IT"
		}
	}
	if cindex = 10{
		global.talking = 0
		global.itemGet = 0
		if selectY = 0{
			global.skyUnlock = -1
			global.playerStartX = 5000
			global.playerStartY = -600
			room_goto(HUB1)
		}
		if selectY = 1{
			global.skyUnlock = 5
			global.playerStartX = -816
			global.playerStartY = -1312
			room_goto(skyHighHunting)
		}
	}
}
if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1)) and global.talking =1 {
	cindex = cindex + 1
}
if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu){
	selectY = selectY - 1
}
if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd){
	selectY = selectY + 1
}
