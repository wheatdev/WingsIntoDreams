if global.paused = -1{
	y = y + global.eGravity
	if place_meeting(x,y+global.eGravity,Ground){
		y = y - global.eGravity
		size = size + .001
		x = x + (5 * direct)
		image_angle = image_angle + (direct *-5)
	}
	if place_meeting(x,y,water){
		size = size - .01
	}
	if size < .005{
		instance_destroy()
	}
	if place_meeting(x+(5*direct),y,IceSlope1) or place_meeting(x+(5*direct),y,IceSlope2){
		y = y - 6.4
	}
	if place_meeting(x+(5*direct),y,IceSlope3) or place_meeting(x+(5*direct),y,IceSlope4){
		y = y - 3.2
	}
	image_xscale = size
	image_yscale = size
}