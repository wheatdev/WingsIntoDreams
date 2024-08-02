if gameStart = 0{
	if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_start){
		if type = 1{
			audio_play_sound(threeSevenMusic,0,true)
			instance_create_depth(640,0,0,Block37C)
		}
		global.paused = global.paused * -1
		gameStart = 1
	}
}
if gameStart = 1{
	if type =1{
		if global.bossHelp1 = 1{
			hVal1 = hVal1 + 1
			if hVal1 > 99{
				hVal1 = 0
				global.bossHelp1 = 0
				instance_create_depth(640,0,0,Block37C)
			}
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
if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_start){
	global.paused = global.paused * -1
}