if global.dippHealth > 0 and global.playAs = 1 and global.cameraActive = 1{
	x = Player.x 
	y = Player.y
	depth = 4
	if global.allowDamage > 1{
		image_alpha = .5
	}
	else{
		image_alpha = 1
	}
}
else{
	if global.cameraActive = 0{
		x = playerCutscene.x
		y = playerCutscene.y
	}
	else{
		instance_destroy()
	}
}
if global.dippSpecial = 2 and (keyboard_check(ord("P")) or keyboard_check(ord("C"))){
	visible = false
}
else{
	visible = true
}