if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_start) or keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1){
	if menu = 0 {	
		if selectY = 0{
			global.eGravity = 10
			global.playAs = 1
			global.paused = -1
			global.lastPressed = 1
			global.allowDamage = 0
			global.isDamaged = 0 
			global.theMoney = 0 
			global.pBounce = 0
			global.specialMeter = 100
			global.specialMax = 100
			global.specialRemember = 0 
			global.pauseX = 1
			global.itemGet = 0
			global.escapeRope = 0
			global.leftovers = 0
			global.frogCoin = 1
			global.lifeSeed = 0

			global.storyProgress = 0
			global.lastIn = 1
			global.SFQ = 0 
			global.minesUnlock = 0
			global.skyUnlock = 0

			global.cutsceneTimer = 0
			global.talking = 0 
			global.dialouge = 0 
			global.cameraActive = 0
			global.playerStartX = 1248
			global.playerStartY = 9056
			global.lastSafeX = 0
			global.lastSafeY = 0
			global.dippActive = 1
			global.gumActive = 0
			global.earnestActive = 0

			global.dippSpeed = 10
			global.dippHealth = 20
			global.dippHealthMax = 20
			global.dippAttack = 1
			global.dippSpecial = 0
			global.dippSpringGet = 0
			global.dippGlideGet = 0
			global.dippDynaGet = 0
			global.dippSnowballGet = 0
			global.dippCloudGet = 0
			global.dippIceGet =	0
			global.dippFireGet = 0

			global.gumSpeed = 8
			global.gumHealth = 40
			global.gumHealthMax = 40
			global.gumAttack = 3
			global.gumSpecial = 1

			global.earnestSpeed = 14
			global.earnestHealth = 50
			global.earnestHealthMax = 50
			global.earnestAttack = 6
			global.earnestSpecial = 1

			global.upgrade = 15
			global.upgrade1Get = 0
			global.upgrade2Get = 0
			global.upgrade3Get = 0
			global.upgrade4Get = 0
			global.upgrade5Get = 0
			global.upgrade6Get = 0
			global.upgrade7Get = 0
			global.upgrade8Get = 0
			global.upgrade9Get = 0
			global.upgrade10Get = 0
			global.upgrade11Get = 0
			global.upgrade12Get = 0
			global.upgrade13Get = 0
			global.upgrade14Get = 0
			global.upgrade15Get = 0

			global.key = 0
			global.key1 = 0
			global.key2 = 0
			global.key3 = 0
			global.key4 = 0
			global.mechanism = 0

			global.arcade1 = 0

			global.bossHelp1 = 0
			global.bossHelp2 = 0

			global.pixelDippHealth = 3
			room_goto(springFactory)
		}
		if selectY = 1{
			global.eGravity = 10
			global.playAs = 1
			global.paused = -1
			global.lastPressed = 1
			global.allowDamage = 0
			global.isDamaged = 0 
			global.theMoney = 0 
			global.pBounce = 0
			global.specialMeter = 100
			global.specialMax = 100
			global.specialRemember = 0 
			global.pauseX = 1
			global.itemGet = 0
			global.escapeRope = 1
			global.leftovers = 1
			global.frogCoin = 1
			global.lifeSeed = 0

			global.storyProgress = 7
			global.lastIn = 1
			global.SFQ = 0 
			global.minesUnlock = 1
			global.skyUnlock = 1

			global.cutsceneTimer = 0
			global.talking = 0 
			global.dialouge = 0 
			global.cameraActive = 0
			global.playerStartX = 1248
			global.playerStartY = 9056
			global.lastSafeX = 0
			global.lastSafeY = 0
			global.dippActive = 1
			global.gumActive = 1
			global.earnestActive = 0

			global.dippSpeed = 10
			global.dippHealth = 20
			global.dippHealthMax = 20
			global.dippAttack = 1
			global.dippSpecial = 1
			global.dippSpringGet = 1
			global.dippGlideGet = 1
			global.dippDynaGet = 1
			global.dippSnowballGet = 1
			global.dippCloudGet = 1
			global.dippIceGet =	0
			global.dippFireGet = 0

			global.gumSpeed = 8
			global.gumHealth = 40
			global.gumHealthMax = 40
			global.gumAttack = 3
			global.gumSpecial = 1

			global.earnestSpeed = 14
			global.earnestHealth = 50
			global.earnestHealthMax = 50
			global.earnestAttack = 6
			global.earnestSpecial = 1

			global.upgrade = 15
			global.upgrade1Get = 1
			global.upgrade2Get = 1
			global.upgrade3Get = 1
			global.upgrade4Get = 1
			global.upgrade5Get = 1
			global.upgrade6Get = 1
			global.upgrade7Get = 1
			global.upgrade8Get = 1
			global.upgrade9Get = 1
			global.upgrade10Get = 1
			global.upgrade11Get = 1
			global.upgrade12Get = 1
			global.upgrade13Get = 1
			global.upgrade14Get = 1
			global.upgrade15Get = 1

			global.key = 0
			global.key1 = 0
			global.key2 = 0
			global.key3 = 0
			global.key4 = 0
			global.mechanism = 0

			global.arcade1 = 1

			global.bossHelp1 = 0
			global.bossHelp2 = 0

			global.pixelDippHealth = 3
			room_goto(springFactory)	
		}
		if selectY = 2{
			global.eGravity = 10
			global.playAs = 1
			global.paused = -1
			global.fullscreen = 1
			global.lastPressed = 1
			global.allowDamage = 0
			global.isDamaged = 0 
			global.theMoney = 0 
			global.pBounce = 0
			global.specialMeter = 100
			global.specialMax = 100
			global.specialRemember = 0 
			global.pauseX = 1
			global.itemGet = 0
			global.escapeRope = 0
			global.leftovers = 0
			global.frogCoin = 1
			global.lifeSeed = 0
			global.skyUnlock = 0
			global.mechanism = 0 

			global.cutsceneTimer = 0
			global.talking = 0 
			global.dialouge = 0 
			global.cameraActive = 0
			global.playerStartX = 1248
			global.playerStartY = 9056
			global.lastSafeX = 0
			global.lastSafeY = 0
			global.dippActive = 0
			global.gumActive = 1
			global.earnestActive = 0

			global.gumSpeed = 8
			global.gumHealth = 40
			global.gumHealthMax = 40
			global.gumAttack = 3
			global.gumSpecial = 1

			global.upgrade = 0
			global.upgrade1Get = 0

			global.bossHelp1 = 0
			global.bossHelp2 = 0
			room_goto(tutorial)
		}
		if selectY = 3{
			selectY = 0 
			menu = 1	
		}
	}
	if menu = 1{
		if selectY = 3{
			selectY = 0 
			menu = 0 	
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
if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu){
	selectY = selectY - 1
}
if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(0,gp_padd){
	selectY = selectY + 1
}