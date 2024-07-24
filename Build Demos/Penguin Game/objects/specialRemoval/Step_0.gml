if global.paused = -1{
	image_angle = image_angle + 5
	image_yscale = size
	image_xscale = size
	if type = 1{
		global.dippSpecial = 0
		global.gumSpecial = 0
		global.earnestSpecial = 0
		size = size + .5
	}
	if type = 2{
		size = size + .15
		if place_meeting(x,y,playerCutscene){
			global.eGravity = -10	
		}
	}
}