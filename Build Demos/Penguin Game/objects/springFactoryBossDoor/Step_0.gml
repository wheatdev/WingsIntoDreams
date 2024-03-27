if place_meeting(x,y,Player) and (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)){
	if global.storyProgress = 1{
		room_goto(Cutscenes)	
	}
	else{
		room_goto(springFactoryBoss)
	}
}
