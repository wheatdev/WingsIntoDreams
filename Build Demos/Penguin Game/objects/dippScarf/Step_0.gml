if global.cameraActive = 1 or global.cameraActive = -2{
	if global.dippHealth > 0 and global.playAs = 1{
		x = Player.x
		y = Player.y
		depth = 4
	}
	else{
		instance_destroy()
	}
}

if global.cameraActive = -1 or global.cameraActive = 0 or global.itemGet = 1{
	x = playerCutscene.x
	y = playerCutscene.y
}
if global.dippSpecial = 2 and keyboard_check(ord("P")){
	visible = false	
}
else{
	visible = true
}
if global.allowDamage > 0{
	image_alpha = .5
}
else{
	image_alpha = 1
}