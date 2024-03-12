if room = title{
	if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
		room_goto(conicCaves)
	}
}
else{
	if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
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
	if keyboard_check(ord("A")) or keyboard_check(vk_left){
		global.lastPressed = -1
	}
	if keyboard_check(ord("D")) or keyboard_check(vk_right){
		global.lastPressed =1
	}
	if keyboard_check_pressed(ord("Q")){
		global.playAs = global.playAs - 1
		if global.playAs < 1{
			global.playAs = 3
		}
	}
	if keyboard_check_pressed(ord("E")){
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
view_camera[0] = camera_create_view(Player.x - 683, Player.y - 484, 1366, 768, 0, Dipp, 5, 5, -1, -1);
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
