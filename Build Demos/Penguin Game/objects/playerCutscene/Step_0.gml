if type = 0{
	if xVal1 = 0{
		sprite_index =dippWalk
		x = x + global.dippSpeed
		if x > yVal2{
			xVal1 = 1
		}
	}
	if xVal1 = 1{
		sprite_index = dippStand
	}
			
}
if type = 1{
	sprite_index = dippWalk
	image_xscale = 1/xVal1
	image_yscale = global.eGravity/yVal2
	xVal1 = xVal1 - .004
	yVal2 = yVal2 - .625
	if yVal2 = 50 or xVal1 = 5{
		instance_create_depth(x,y,depth,Dipp)
		global.cameraActive = 1
		instance_destroy()
	}
}
if type = 2{
	if x < global.playerStartX{
		x = x + 12
		if xVal1 = 0{
			y = y - global.eGravity
			sprite_index = dippJump1
			if y < yVal2{
				xVal1 = 1
			}
		}
		if xVal1 = 1{
			y = y + global.eGravity
			sprite_index = dippJump2
		}
	}
	else{
		instance_create_depth(x,y,depth,Dipp)
		global.cameraActive = 1
		instance_destroy()
	}
}
if type = 3{
	sprite_index = dippJump2
	y = y + global.eGravity
	if place_meeting(x,y+global.eGravity,Ground){
		instance_create_depth(x,y,depth,Dipp)
		global.cameraActive = 1
		instance_destroy()
	}
}
if type = 4{
	sprite_index = dippSwimSword22
	image_angle = image_angle - 25
	y = y + (global.eGravity * 2)
	if y > 489{
		instance_create_depth(x,y,depth,Dipp)
		global.cameraActive = 1
		instance_destroy()
	}
}