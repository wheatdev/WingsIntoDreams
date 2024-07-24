if global.paused = -1 and global.talking = 0 and global.cameraActive = -2{
	x = GumBoss.x
	y = GumBoss.y
	image_xscale = (.25 * global.bossHelp2)
	if global.bossHelp1 = 0{
		shootAngle = 7
		timer = timer + 1
		if timer = 50{
			instance_create_depth(x,y+2.5*global.eGravity,0,A2CBossShotH)
		}
		if timer = 55{
			instance_create_depth(x,y+2.5*global.eGravity,0,A2CBossShotH)
		}
		if timer > 59{
			instance_create_depth(x,y+2.5*global.eGravity,0,A2CBossShotH)
			timer = 0
		}
	}
	if global.bossHelp1 = 1{
		shootAngle = 3
		timer = timer + 1
		if timer = 50{
			instance_create_depth(x,y+2.5*global.eGravity,0,A2CBossShotH)
		}
		if timer = 55{
			instance_create_depth(x,y+2.5*global.eGravity,0,A2CBossShotH)
		}
		if timer > 59{
			instance_create_depth(x,y+2.5*global.eGravity,0,A2CBossShotH)
			timer = 0
		}
	}
	if global.bossHelp1 = 2 or global.bossHelp1 = 3{
		shootAngle = 5
	}
	if global.bossHelp1 = 4 or global.bossHelp1 = 5{
		if global.cameraActive = -2{
			if Player.x > x{
				shootAngle = 3
			}
			else{
				shootAngle = 7
			}
		}
	}
	if global.bossHelp1 = 6{
		shootAngle = 6
		timer = timer + 1
		if timer = 50{
			instance_create_depth(x,y,0,A2CBossShotD)
		}
		if timer = 55{
			instance_create_depth(x,y,0,A2CBossShotD)
		}
		if timer > 59{
			instance_create_depth(x,y,0,A2CBossShotD)
			timer = 0
		}
	}
	if global.bossHelp1 = 7{
		shootAngle = 4
		timer = timer + 1
		if timer = 50{
			instance_create_depth(x,y,0,A2CBossShotD)
		}
		if timer = 55{
			instance_create_depth(x,y,0,A2CBossShotD)
		}
		if timer > 59{
			instance_create_depth(x,y,0,A2CBossShotD)
			timer = 0
		}
	}
	if global.bossHelp1 = 8{
		shootAngle = 6
		timer = timer + 1
		if timer = 50{
			instance_create_depth(x,y,0,A2CBossShotD)
		}
		if timer = 55{
			instance_create_depth(x,y,0,A2CBossShotD)
		}
		if timer > 59{
			instance_create_depth(x,y,0,A2CBossShotD)
			timer = 0
		}
	}
	if global.bossHelp1 = 9{
		shootAngle = 4
		timer = timer + 1
		if timer = 50{
			instance_create_depth(x,y,0,A2CBossShotD)
		}
		if timer = 55{
			instance_create_depth(x,y,0,A2CBossShotD)
		}
		if timer > 59{
			instance_create_depth(x,y,0,A2CBossShotD)
			timer = 0
		}
	}
}
if shootAngle = 5{
	image_angle = 0	
}
if shootAngle = 6{
	image_angle = -45
}
if shootAngle = 7{
	image_angle = -90
}
if shootAngle = 8{
	image_angle = -135
}
if shootAngle = 1{
	image_angle = -180
}
if shootAngle = 2{
	image_angle = -225
}
if shootAngle = 3{
	image_angle = -270
}
if shootAngle = 4{
	image_angle = -315
}