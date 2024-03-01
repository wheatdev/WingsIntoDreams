if global.dippHealth > 0{
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
