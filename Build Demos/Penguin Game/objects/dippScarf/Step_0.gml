if global.dippHealth > 0 and global.playAs = 1{
	x = Dipp.x
	y = Dipp.y
	if global.allowDamage > 1{
		image_alpha = .5
	}
	else{
		image_alpha = 1
	}
}
else{
	instance_destroy()
}
if global.dippSpecial = 2 and (keyboard_check(ord("P")) or keyboard_check(ord("C"))){
	visible = false
}
else{
	visible = true
}