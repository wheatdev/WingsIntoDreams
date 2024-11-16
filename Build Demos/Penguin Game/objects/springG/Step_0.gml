if global.paused = -1{
	if place_meeting(x,y-5,Player){
		image_yscale = image_yscale -.25
	}
	else{
		image_yscale = image_yscale + .25
	}
	if image_yscale < .5{
		global.pBounce = 45
		image_yscale = 1
	}
	if image_yscale > 1{
		image_yscale = 1
	}
}