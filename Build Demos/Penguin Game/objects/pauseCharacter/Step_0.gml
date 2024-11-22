if global.cameraActive = 1{
	x = pauseMenu.x - 480
	y = pauseMenu.y - 150
}
if global.cameraActive = -2{
	x = pauseMenu.x - 480
	y = pauseMenu.y -150
}

if global.playAs = 1{
	sprite_index = dippStand
	image_xscale = 1
	image_yscale = 1
}
if global.playAs = 2{
	sprite_index = A2CStand
	image_xscale = 1
	image_yscale = 1
}
if global.paused = 1{
	visible = true
}
else{
	visible = false
}