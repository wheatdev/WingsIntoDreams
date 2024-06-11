if place_meeting(x,y,Player){
	global.cameraActive = -1
	global.lastSafeX = x + 348
	view_camera[0] = camera_create_view(x-64,y-280, 1600, 900, 0, Dipp, 5, 5, -1, -1)
}
if global.cameraActive = -1 and place_empty(x,y,Player){
	instance_create_depth(x,y,0,megamanBarrier2)	
	if xPos = 15712{
		instance_create_depth(16864,192,0,A2C1Boss)
	}
	if xPos = 17056{
		instance_create_depth(18272,-3520,0,A2C2Boss)
	}
	instance_destroy()
}