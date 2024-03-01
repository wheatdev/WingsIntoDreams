if global.paused = -1{
	if place_meeting(x,y-5,Player){
		image_yscale = image_yscale -.05
	}
	else{
		image_yscale = image_yscale + .05
	}
	if image_yscale < .1{
		global.pBounce = 45
		image_yscale = .3
	}
	if image_yscale > .3{
		image_yscale = .3
	}
}