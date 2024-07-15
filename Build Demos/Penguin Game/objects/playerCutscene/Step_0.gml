if type = 0{
	if global.cutsceneTimer = 0{
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
		if place_meeting(x,y+global.eGravity,Ground){
			y = y -global.eGravity
		}
		y = y + global.eGravity
	}
	if global.cutsceneTimer = 1{
		sprite_index = dippHold
	}
	if global.cutsceneTimer = 2{
		sprite_index = dippThrow
	}
	if global.cutsceneTimer = 3{
		sprite_index = dippDeath2
	}
	if global.cutsceneTimer = 4{
		sprite_index = dippPain
	}
}
if type = 1{
	if place_meeting(x,y,springFactoryBossDoor){
		xVal1 = 6
		yVal2 = 62.5
		type = 6
	} 
	if place_meeting(x,y,springSpecial){
		type = 7
	}
	sprite_index = dippWalkF1
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
	global.cutsceneTimer = 0
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
	if y > 3000{
		instance_create_depth(x,y,depth,Dipp)
		global.cameraActive = 1
		instance_destroy()
	}
}
if type = 5{
	sprite_index = dippDeath2
	if keyboard_check_pressed(ord("I"))	or keyboard_check_pressed(ord("Z")){
		instance_create_depth(x,y,depth,Dipp)
		global.cameraActive = 1
		instance_destroy()
	}
}
if type = 6{
	sprite_index = dippWalk
	image_xscale = 1/xVal1
	image_yscale = global.eGravity/yVal2
	xVal1 = xVal1 + .002
	yVal2 = yVal2 + .3125
	if yVal2 > 62.5 or xVal1 > 6{
		room_goto(springFactoryBoss)
	}
}
if type = 7{
	sprite_index = dippHold
	y = y + global.eGravity
	image_xscale = .2
	image_yscale = global.eGravity/50
	if place_meeting(x,y+global.eGravity,Ground){
		y = y - global.eGravity
	}
	if keyboard_check_pressed(ord("P")) or keyboard_check_pressed(ord("C")){
		instance_create_depth(x,y,depth,Dipp)
		global.itemGet = 0
		global.cameraActive = 1
		instance_destroy()
	}
}
if type = 8{
	sprite_index = dippWalk
	if x > global.lastSafeX{
		x = x - global.dippSpeed
		image_xscale = -.2
	}
	if x < global.lastSafeX{
		x = x + global.dippSpeed
	}
	if abs(x - global.lastSafeX) < 30{
		type = 0 
		image_xscale = .2
		global.cameraActive = 0
		if room = donnerShipInside or room = donnerShipOutside or hopperHeliship{
			instance_create_depth(x,y,depth,Dipp)
			global.cameraActive = -2
			instance_destroy()
		}
	}
	if place_meeting(x,y+global.eGravity,Ground){
		y = y -global.eGravity
	}
	y = y + global.eGravity
}
if type = 9{
	if xVal1 = 0{
		sprite_index = dippJump1
		y = y - global.eGravity
		if y < yVal2 - 300{
			xVal1 = 1	
		}
	}
	if xVal1 = 1{
		sprite_index = dippJump2
		y = y + (global.eGravity * 1.5)
		if place_meeting(x,y+global.eGravity,Ground){
			xVal1 = 2
		}
	}
	if xVal1 = 2{
		sprite_index = dippSpring
		y = y - (global.eGravity * 1.5)
		if y < yVal2 - 800{
			if room = donnerShipOutside{
				room_goto(hopperHeliship)
			}
			else{
				type = 3
			}
		}
	}
}
if global.cutsceneTimer < -1{
	visible = false	
}