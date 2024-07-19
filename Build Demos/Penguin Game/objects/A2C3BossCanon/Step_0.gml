if global.cameraActive = -2{
	x = A2C3Boss.x
	y = A2C3Boss.y
	visible = true
}
else{
	if global.mechanism > 0{
		y = y + 1000	
	}
}
if active = 0 and y > -3744{
	active = 1
}
if active = 1{
	rangeX = abs(Player.x - x)
	rangeY = abs(Player.y - y)
	timer = timer + 1
	if rangeX < 100{
		if Player.y < y{
			shootAngle = 1	
		}
		else{
			shootAngle = 5	
		}
	}
	if rangeX < 450{
		if rangeY > 200{
			if Player.y	< y{
				if Player.x > x{
					shootAngle = 2
				}
				else{
					shootAngle = 8
				}
			}
			else{
				if Player.x > x{
					shootAngle = 4
				}
				else{
					shootAngle = 6
				}
			}
		}
	}
	if rangeY < 100{
		if Player.x < x{
			shootAngle = 7	
		}
		else{
			shootAngle = 3
		}
	}
}

if shootAngle = 1{
	image_angle = 0	
}
if shootAngle = 2{
	image_angle = -45
}
if shootAngle = 3{
	image_angle = -90
}
if shootAngle = 4{
	image_angle = -135
}
if shootAngle = 5{
	image_angle = -180
}
if shootAngle = 6{
	image_angle = -225
}
if shootAngle = 7{
	image_angle = -270
}
if shootAngle = 8{
	image_angle = -315
}
if place_meeting(x,y,DippSword) or place_meeting(x,y,Dynamite){
	timer = timer -10	
}
if timer < 0{
	timer = 0
}
if timer > 60 and global.cameraActive = -2{
	if shootAngle = 1 or shootAngle = 5{
		instance_create_depth(x,y,0,A2CBossShotV)	
	}
	if shootAngle = 3 or shootAngle = 7{
		instance_create_depth(x,y,0,A2CBossShotH)
	}
	if shootAngle = 2 or shootAngle = 4 or shootAngle = 6 or shootAngle = 8{
		instance_create_depth(x,y,0,A2CBossShotD)
	}
	timer = 0
}
if y > startY + 1800{
	global.mechanism = 0
	instance_destroy()
}