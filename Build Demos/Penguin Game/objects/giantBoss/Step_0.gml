if type = 0{
	if global.talking = 0{
		type = 1	
	}
}
if type = 1{
	if audio_is_playing(giantBossMusic){
		if gHealth > 0{
			healTimer = healTimer + 1
			moveTimer = moveTimer + 1
			if healTimer > 400{
				gHealth = gHealth + 1
				healTimer = 0
			}
			if gHealth > 10{
				gHealth = 10
			}
			if moveTimer > 400{
				position = irandom_range(1,3)
				moveTimer = 0
			}
			if position = 1{
				if x > 512{
					x = x - 4	
				}
			}
			if position = 2{
				if x < 	672{
					x = x + 4
				}
				if x > 	672{
					x = x - 4
				}
			}
			if position = 3{
				if x < 	832{
					x = x + 4
				}
			}
			if place_meeting(x,y,kibiKicked) and allowHit = 0{
				gHealth = gHealth -1
				healTimer = 0
				allowHit = 30
			}
			if place_meeting(x,y,Dynamite) and allowHit = 0{
				gHealth = gHealth - global.dippAttack
				healTimer = 0 
				allowHit = 30 
			}
			if allowHit > 0{
				allowHit = allowHit - 1
				image_alpha = .5
			}
			else{
				image_alpha = 1	
			}
		}
	}
	else{
		audio_play_sound(giantBossMusic,0,true)
	}
}
view_camera[0] = camera_create_view(x-800,y -550, 1600, 900, 0, Dipp, 5, 5, -1, -1)