if global.paused = -1{
	if place_meeting(x,y-(global.eGravity * 2),Player){
		size = size - .002
	}
	if place_meeting(x,y-(global.eGravity * 2),Enemy){
		size = size - .002
	}
	size = size + .0005
	if size > .2{
		size = .2
	}
	image_xscale = size
	image_yscale = size
}