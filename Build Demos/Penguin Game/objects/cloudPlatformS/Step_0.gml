if global.paused = -1{
	if place_meeting(x,y-(global.eGravity * 2),Player){
		size = size - .005
	}
	if place_meeting(x,y-(global.eGravity * 3),Enemy){
		size = size - .005
	}
	size = size + .001
	if size > .2{
		size = .2
	}
	if size < 0{
		size = 0
	}
	image_xscale = size
	image_yscale = size
}