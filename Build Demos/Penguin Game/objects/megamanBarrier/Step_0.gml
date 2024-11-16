if place_meeting(x-xVal,y,Player){
	if global.dialouge = 0{
		global.cameraActive = -1
		global.lastSafeX = x + 348
		touched = 1
		global.mechanism = 0
		view_camera[0] = camera_create_view(x-64,y-280, 1600, 900, 0, Dipp, 5, 5, -1, -1)
	}
}
if global.playAs = 1{
	xVal = global.dippSpeed
}
if global.cameraActive = -1 and place_empty(x,y,Player) and touched = 1 and global.dialouge = 0{
	instance_create_depth(x,y,0,megamanBarrier2)	
	if xPos = 15712{
		instance_create_depth(16864,y - 512,0,A2C1Boss)
	}
	if xPos = 20672{
		instance_create_depth(21824,y - 512,0,A2C1Boss)
	}
	if xPos = 22016{
		instance_create_depth(23168,y-512,0,A2C2Boss)
	}
	if xPos = 29600{
		instance_create_depth(30752,y-512,0,A2C3Boss)
	}
	if xPos = 36160{
		instance_create_depth(37560,y-512,0,GumBoss)
	}
	instance_destroy()
}