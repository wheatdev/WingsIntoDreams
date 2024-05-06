if global.paused = -1{
	y = y + global.eGravity
	if place_meeting(x,y+global.eGravity,Ground){
		y = y - global.eGravity
	}
	if place_meeting(x,y,Player) or place_meeting(x,y,playerCutscene){
		moveOn = 1
	}
	if moveOn = 1{
		if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
			global.playerStartX = -1280
			global.playerStartY = -396
			room_goto(HUB1)	
		}
	}
}