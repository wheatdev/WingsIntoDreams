if room = title{
	if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_start){
		room_goto(springFactory)
	}
}
else{
	if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_start){
		if global.playAs = 1 and global.dippHealth < 1{
			global.dippHealth = global.dippHealthMax
			global.paused = global.paused * -1
			global.pBounce = 0
			room_restart()
		}
		if global.playAs = 2 and global.gumHealth < 1{
			global.gumHealth = global.gumHealthMax
			global.paused = global.paused * -1
			global.pBounce = 0
			room_restart()
		}
		global.paused = global.paused * -1
	}
	if keyboard_check(ord("A")) or keyboard_check(vk_left) or gamepad_button_check(0,gp_padl){
		if global.playAs = 1 and global.dippHealth > 0{
			global.lastPressed = -1
		}
		if global.playAs = 2 and global.gumHealth > 0{
			global.lastPressed = -1
		}
	}
	if keyboard_check(ord("D")) or keyboard_check(vk_right) or gamepad_button_check(0,gp_padr){
		if global.playAs = 1 and global.dippHealth > 0{
			global.lastPressed = 1
		}
		if global.playAs = 2 and global.gumHealth > 0{
			global.lastPressed = 1
		}
	}
	if keyboard_check_pressed(ord("Q")) or gamepad_button_check(0,gp_shoulderlb){
		global.playAs = global.playAs - 1
		if global.playAs < 1{
			global.playAs = 3
		}
	}
	if keyboard_check_pressed(ord("E")) or gamepad_button_check(0,gp_shoulderrb){
		global.playAs = global.playAs + 1
		if global.playAs > 3{
			global.playAs = 1
		}
	}
	if global.playAs = 1 and global.dippActive = 0{
		if global.gumActive = 1{
			global.playAs = 2
		}
		if global.earnestActive = 1{
			global.playAs = 3
		}
	}
	if global.playAs = 2 and global.gumActive = 0{
		if global.dippActive = 1{
			global.playAs = 1
		}
		if global.earnestActive = 1{
			global.playAs = 3
		}
	}
	if global.playAs = 3 and global.earnestActive = 0{
		if global.dippActive = 1{
			global.playAs = 1
		}
		if global.gumActive = 1{
			global.playAs = 2
		}
	}
if global.cameraActive = 1{	
	view_camera[0] = camera_create_view(Player.x - 800, Player.y - 550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
}
if room = conCaveTemple and global.cameraActive = 0{
	view_camera[0] = camera_create_view(playerCutscene.x - 800, playerCutscene.y - 550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
}
if room = donnerShipOutside and global.cameraActive = 0{
	view_camera[0] = camera_create_view(playerCutscene.x - 800, playerCutscene.y - 550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
}
if room = hopperHelishipUnderside and global.cutsceneTimer = 0{
	view_camera[0] = camera_create_view(playerCutscene.x - 800, playerCutscene.y - 550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
}
if global.itemGet = 1{
	view_camera[0] = camera_create_view(playerCutscene.x - 800, playerCutscene.y - 550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
}
if keyboard_check(vk_escape){
	game_end()
}
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
if global.paused = -1{
	global.specialMeter = global.specialMeter + .05
	if global.specialMeter > 100{
		global.specialMeter = 100
	}
	if global.skyUnlock < 0{
		global.skyUnlock = global.skyUnlock - 1
		global.specialMeter = global.specialMeter + .05
		if global.skyUnlock < -149{
			if global.playAs = 1{
				global.dippHealth = global.dippHealth + 1	
			}
			global.skyUnlock = -1	
		}
	}
}


