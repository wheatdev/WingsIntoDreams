if room = title{
	if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
		room_goto(springFactory)
	}
}
else{
	if keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter){
		global.paused = global.paused * -1
	}
	if keyboard_check(ord("A")) or keyboard_check(vk_left){
		global.lastPressed = -1
	}
	if keyboard_check(ord("D")) or keyboard_check(vk_right){
		global.lastPressed =1
	}
view_camera[0] = camera_create_view(Player.x - 683, Player.y - 484, 1366, 768, 0, Dipp, 5, 5, -1, -1);
}
if keyboard_check(vk_escape){
	game_end()
}