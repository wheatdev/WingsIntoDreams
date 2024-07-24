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
if type = 5{
	if global.talking = 1{
		view_camera[0] = camera_create_view(33056,-13432, 1600, 900, 0, Dipp, 5, 5, -1, -1)
	}
	if global.cutsceneTimer = -1{
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
if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z"))) and global.talking =1 {
	cindex = cindex + 1
}

