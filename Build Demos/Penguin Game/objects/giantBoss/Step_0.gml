if type = 0{
	view_camera[0] = camera_create_view(x-800,y -550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
	if global.talking = 0{
		global.skyUnlock = 4
		type = 1	
	}
}
if type = 1{
	view_camera[0] = camera_create_view(x-800,y -550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
	if global.paused = -1{
		if audio_is_playing(giantBossMusic){
			if gHealth > 0{
				global.bossHelp1 = global.bossHelp1 + 1
				moveTimer = moveTimer + 1
				if global.bossHelp2 = 0{
					attackTimer = attackTimer + 1
				}
				if global.bossHelp1 > 400{
					if gHealth < 10{
						audio_play_sound(healSE,0,false)
						gHealth = gHealth + 1
					}
					global.bossHelp1 = 0
				}
				if gHealth > 10{
					gHealth = 10
				}
				if moveTimer > 400{
					position = irandom_range(1,3)
					moveTimer = 0
				}
				if position = 1{
					if x > 1216{
						x = x - 4	
					}
				}
				if position = 2{
					if x < 	1376{
						x = x + 4
					}
					if x > 	1376{
						x = x - 4
					}
				}
				if position = 3{
					if x < 	1536{
						x = x + 4
					}
				}
				if jumpState = 0{
					y = y + .5	
					if y > maxHeight + 20{
						jumpState = 1	
					}
				}
				if jumpState = 1{
					y = y - .5
					if y < maxHeight{
						jumpState = 0	
					}
				}
				if place_meeting(x,y,kibiKicked) and allowHit = 0{
					gHealth = gHealth -1
					global.bossHelp1 = 0
					allowHit = 30
				}
				if place_meeting(x,y,Dynamite) and allowHit = 0{
					gHealth = gHealth - ((global.dippAttack * 2) - 1)
					global.bossHelp1 = 0
					allowHit = 30 
				}
				if attackTimer > 149{
					global.bossHelp2 = irandom_range(1,4)
					attackTimer = 0
				}
				if allowHit > 0{
					allowHit = allowHit - 1
					image_alpha = .5
				}
				else{
					image_alpha = 1	
				}
			}
			else{
				instance_create_depth(x,y,0,cloudAmulet)
				type =2	
			}
		}
		else{
			audio_play_sound(giantBossMusic,0,true)
		}
	}
}
if type = 2{
	view_camera[0] = camera_create_view(576,456 -550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
	y = y + 3
	image_alpha = 1
}