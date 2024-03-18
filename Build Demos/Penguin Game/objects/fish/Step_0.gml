if global.paused = -1{
	if place_meeting(x,y,water){
		x = x + (directX * 5)
		y = y+ (directY * 5)
		if place_meeting(x+(directX * 5),y, Ground) or place_meeting(x,y+(directY * 5), Ground){
			directX = irandom_range(-1,1)
			directY = irandom_range(-1,1)	
		}
		timer = timer + 1
		if timer > 50{
			directX = irandom_range(-1,1)
			directY = irandom_range(-1,1)
			timer = 0
		}
	}
	else{
		y = y + (global.eGravity * 3)
		directX = irandom_range(-1,1)
		directY = -1	
	}
	if directX = 1{
		image_xscale = -.3	
	}
	else{
		image_xscale = .3
	}
}