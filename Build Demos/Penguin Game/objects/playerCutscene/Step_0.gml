if type = -1{
	if global.playAs = 1{
		sprite_index = dippWalk
		if x > global.lastSafeX{
			x = x - global.dippSpeed
			image_xscale = -1
		}
		if x < global.lastSafeX{
			x = x + global.dippSpeed
		}
	}
	if global.playAs = 2{
		sprite_index = A2CStand
		if x > global.lastSafeX{
			x = x - global.gumSpeed
			image_xscale = -1
		}
		if x < global.lastSafeX{
			x = x + global.gumSpeed
		}
	}
	if abs(x - global.lastSafeX) < 30{
		image_xscale = global.lastPressed
		global.cameraActive = 0	
		type = 0 
		if ((room = donnerShipInside) or (room = donnerShipOutside) or (room = hopperHeliship) or (room = tutorial)) and global.talking = 0{
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
if type = 0{
	if global.cameraActive = 1{
		visible = false
	}
	if global.cutsceneTimer = 0{
		sprite_index = dippStand
	}
}
if type = 1{
	sprite_index = dippWalkF1
	image_xscale = 1/hVal1
	image_yscale = 10/hVal2
	hVal1 = hVal1 - .004
	hVal2 = hVal2 - .625
	if hVal1 < 5 or hVal2 < 50{
		instance_create_depth(x,y,0,Dipp)
		instance_destroy()
	}
}
if type = 2{
	sprite_index = dippHold
	y = y + global.eGravity
	image_xscale = 1
	image_yscale = global.eGravity/10
	if place_meeting(x,y+global.eGravity,Ground){
		y = y - global.eGravity
	}
	if keyboard_check_pressed(ord("P")) or keyboard_check_pressed(ord("C")) or gamepad_button_check_pressed(0,gp_face2){
		instance_create_depth(x,y,depth,Dipp)
		global.itemGet = 0
		global.cameraActive = 1
		instance_destroy()
	}
}
if type = 3{
	sprite_index = dippSwimSword22
	image_angle = image_angle - 25
	y = y + (global.eGravity * 2)
	if y > 3000{
		instance_create_depth(x,y,depth,Dipp)
		global.cameraActive = 1
		instance_destroy()
	}	
}
if type = 4{
	if x < global.playerStartX{
		x = x + 12
		if hVal1 = 0{
			y = y - global.eGravity
			sprite_index = dippJump1
			if y < hVal2{
				hVal1 = 1
			}
		}
		if hVal1 = 1{
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
if type = 5{
	sprite_index = dippJump2
	image_yscale = global.eGravity/10
	global.cutsceneTimer = 0
	y = y + global.eGravity
	if place_meeting(x,y+(global.eGravity*2),Ground){
		if room = skyHighHuntingBoss and global.skyUnlock < 3{
			type = 0
		}
		else{
			instance_create_depth(x,y,depth,Dipp)
			global.cameraActive = 1
			if room = hopperHelishipUnderside{
				global.cameraActive = -2	
				global.cutsceneTimer = -2
			}
			instance_destroy()
		}
	}
}
if type = 6{
	sprite_index = dippDeath2
	if (keyboard_check_pressed(ord("I"))	or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1)) and global.talking = 0{
		instance_create_depth(x,y,depth,Dipp)
		global.cameraActive = 1
		instance_destroy()
	}
}
if type = 7{
	if hVal1 = 0{
		sprite_index = dippJump1
		y = y - global.eGravity
		if y < hVal2 - 300{
			hVal1 = 1	
		}
	}
	if hVal1 = 1{
		sprite_index = dippJump2
		y = y + (global.eGravity * 1.5)
		if place_meeting(x,y+global.eGravity,Ground){
			hVal1 = 2
		}
	}
	if hVal1 = 2{
		sprite_index = dippSpring
		y = y - (global.eGravity * 1.5)
		if y < hVal2 - 800{
			if room = donnerShipOutside{
				room_goto(hopperHeliship)
			}
			else{
				if room = skyHighHunting{
					room_goto(skyHighHuntingBoss)
				}
				type = 5
			}
		}
	}
	
}
if type = 8{
	if x < global.playerStartX{
		sprite_index = dippSword2	
		x = x + (global.dippSpeed * 2)
	}	
	else{
		instance_create_depth(x,y,depth,Dipp)
		global.cameraActive = 1
		instance_destroy()
	}
}
if type = 9{
	view_camera[0] = camera_create_view(x-800,y -550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
	if hVal1 = 0{
		y = y + global.eGravity
		sprite_index = dippJump2
		if place_meeting(x,y+(2*global.eGravity),Ground){
			hVal1 = 1
		}
	}
	if hVal1 = 1{
		sprite_index = dippWalk
		y = y + global.eGravity
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity
			hVal2 = y - 300
		}
		x = x + global.dippSpeed	
		if x > 2752{
			hVal1 = 2	
		}
	}
	if hVal1 = 2{
		x = x + global.dippSpeed
		sprite_index = dippJump1
		y = y - global.eGravity
		if y < hVal2{
			hVal1 = 3	
		}
	}
	if hVal1 = 3{
		x = x + global.dippSpeed	
		sprite_index = dippJump2
		y = y + global.eGravity
		if place_meeting(x,y+(2*global.eGravity),Ground){
			hVal1 = 4
		}
	}
	if hVal1 = 4{
		x = x + global.dippSpeed
		sprite_index = dippWalk
		if place_meeting(x,y,Hub1Door) and x > 4000{
			room_goto(Shop1)	
		}
	}
}
if type = 10{
	hVal1 = hVal1 + 1
	if hVal1 > 150{
		instance_create_depth(x,y,depth,Dipp)
		instance_destroy()
	}
}