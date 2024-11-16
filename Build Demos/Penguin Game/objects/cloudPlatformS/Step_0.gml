if global.paused = -1{
	if place_meeting(x,y-(global.eGravity * 2),Player){
		size = size - .025
	}
	if place_meeting(x,y-(global.eGravity * 3),Enemy){
		size = size - .015
	}
	size = size + .005
	if size > 1{
		size = 1
	}
	if size < 0{
		size = 0
	}
	image_xscale = size
	image_yscale = size
}