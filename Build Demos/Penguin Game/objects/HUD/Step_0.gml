if global.paused = -1 and global.cameraActive = 1 and hide = -1{
	visible = true
	x = Player.x - 430
	y = Player.y - 380
	draw_set_color(c_white)
	draw_set_font(MenuFontSmall)
}
else{
	visible = false
	draw_set_color(c_black)
	draw_set_font(MenuFont)
}
if keyboard_check_pressed(ord("H")){
	hide = hide * -1
}