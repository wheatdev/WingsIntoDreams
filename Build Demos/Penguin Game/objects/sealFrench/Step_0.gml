if global.paused = -1 and global.cameraActive = 1{
	if state = 0{
		rangeX = abs(Player.x - x)
		rangeY = abs(Player.y - y)
		if rangeX < 1000 and rangeY < 500{
			state = 1
			global.lastSafeX = 33400
			global.cameraActive = -1
		}
	}
	if global.cutsceneTimer = -2{
		if audio_is_playing(donJointBossMusic){
			global.lastSafeX = Player.x
			y = y + global.eGravity
			if place_meeting(x,y+global.eGravity,Ground){
				y = y - global.eGravity
			}
			sprite_index = sealMoveF
			image_xscale = .3 * direct
			x = x - (3 * direct)
			if place_meeting(x-(3*direct),y,Ground){
				x = x + (3 * direct)
			}
			if Player.x < x{
				direct = 1
			}
			else{
				direct = -1
			}
			if place_meeting(x,y,DippSword) or place_meeting(x,y,Dynamite){
				global.cutsceneTimer = -3
				global.talking =1
				global.cameraActive = -1
				deathY = y
			}
		}
		else{
			audio_play_sound(donJointBossMusic,0,true)
		}
	}
	if global.cutsceneTimer = -3{
		if global.dippSnowballGet = 0{
			global.dippSnowballGet = 1	
		}
		y = y - global.eGravity	
		if y < deathY - 1500{
			audio_stop_all()
			audio_play_sound(conicCavesMusic,0,true)
			instance_destroy()
		}
	}
}
if global.cameraActive = 0 and state = 1{
	view_camera[0] = camera_create_view(x- 800,y - 550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
	global.talking = 1
}


