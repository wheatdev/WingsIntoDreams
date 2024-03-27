if global.cameraActive = 1{
	x = Player.x - 480
	y = Player.y - 250
	if global.playAs = 1{
		sprite_index = dippStand
		image_xscale = .3
		image_yscale = .3
	}
	if global.playAs = 2{
		sprite_index = A2CStand
		image_xscale = .4
		image_yscale = .4
	}
	if global.paused = 1{
		visible = true
	}
	else{
		visible = false
	}
}