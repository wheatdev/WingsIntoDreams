if type = 1{
	x = x + 20
}
if type = 3{
	y = y - global.eGravity
	if y < -4000{
		global.cameraActive = -1
		global.lastSafeX = x
		global.cutsceneTimer = 1
	}
}
image_yscale = .5
image_xscale = .5