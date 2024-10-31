if global.paused = -1{
	if place_meeting(x,y,Player){
		if type = 1{
			room_goto(conCaveTemple)
		}
		if type = 2{
			global.cameraActive = 1
			instance_create_depth(x,y,0,cutsceneClaw)
			global.playerStartX = 3700
			global.playerStartY = 15000
			type = 0
		}
		if type = 3{
			global.mechanism = 0
		}
		if type = 4{
			global.playerStartX = 3720
			global.playerStartY = 18330
			room_goto(skyHighHunting)
		}
		if type = 5{
			room_goto(HUB1)	
		}
		if type = 6{
			global.cameraActive = -1
			global.lastSafeX = x
			global.cutsceneTimer = 1
		}
	}
}