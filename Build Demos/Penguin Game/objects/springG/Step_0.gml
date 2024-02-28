if global.paused = -1{
	if place_meeting(x,y,Dipp){
		image_yscale = image_yscale -.05
	}
	else{
		image_yscale = image_yscale + .05
	}
	if image_yscale < .1{
		image_yscale = .1
		global.dippBounce = 35
	}
	if image_yscale > .3{
		image_yscale = .3
	}
}