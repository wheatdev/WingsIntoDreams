timer = timer + 1
if levelGoTo = 1{
	x = 352
	y = 128
	global.playerStartX = 255
	global.playerStartY = 563
	if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down){
		levelGoTo = 2
	}
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z"))) and timer > 30{
		room_goto(springFactory)	
	}
}
if levelGoTo = 2{
	x = 352
	y = 384
	if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up){
		levelGoTo = 1
	}
	if (keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right)) and global.storyProgress > 2{
		levelGoTo = 3
	}
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z"))) and timer > 30{
		room_goto(Shop1)	
	}
}
if levelGoTo = 3{
	x = 800
	y = 384
	global.playerStartX = 832
	global.playerStartY = 704
	if keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left){
		levelGoTo = 2
	}
	if (keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)) and global.storyProgress > 4{
		levelGoTo = 4
	}
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z"))) and timer > 30{
		room_goto(conicCaves)	
	}
}
if levelGoTo = 4{
	x = 800
	y = 608
	if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up){
		levelGoTo = 3
	}
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z"))) and timer > 30{
		room_goto(conCaveTemple)	
	}
}