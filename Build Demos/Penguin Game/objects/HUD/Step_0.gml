if global.paused = -1 and global.cameraActive = 1 and hide = -1{
	visible = true
	x = Player.x - 500
	y = Player.y - 430
	draw_set_color(c_white)
	draw_set_font(MenuFontSmall)
}
else{
	visible = false
	draw_set_color(c_black)
	draw_set_font(MenuFont)
}
if keyboard_check_pressed(ord("H")) or gamepad_button_check_pressed(0,gp_select){
	hide = hide * -1
}