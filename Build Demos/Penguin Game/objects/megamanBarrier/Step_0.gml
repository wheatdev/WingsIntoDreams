if place_meeting(x,y,Player){
	global.cameraActive = -1
	global.lastSafeX = x + 348
	touched = 1
	global.mechanism = 0
	view_camera[0] = camera_create_view(x-64,y-280, 1600, 900, 0, Dipp, 5, 5, -1, -1)
}
if global.cameraActive = -1 and place_empty(x,y,Player) and touched = 1{
	instance_create_depth(x,y,0,megamanBarrier2)	
	if xPos = 15712{
		instance_create_depth(16864,192,0,A2C1Boss)
	}
	if xPos = 17056{
		instance_create_depth(18272,-3520,0,A2C2Boss)
	}
	if xPos = 26560{
		instance_create_depth(27808,-4544,0,A2C3Boss)
	}
	if xPos = 33120{
		instance_create_depth(34460,-13504,0,GumBoss)
	}
	instance_destroy()
}