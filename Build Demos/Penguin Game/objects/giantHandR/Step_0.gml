if global.paused = -1{
	if gHealth > 0{
		if place_meeting(x,y,Dynamite) and allowHit = 0 {
			gHealth = gHealth - ((global.dippAttack * 2) - 1)
			allowHit = 40
		}
		if global.bossHelp2 = 0{
			sprite_index = bigLadyHand
			x = giantBoss.x - 280
			y = giantBoss.y + 60
			if place_meeting(x,y,kibiKicked) and allowHit = 0{
				gHealth = gHealth - 1
				allowHit = 50
			}	
		}
		if allowHit > 0{
			allowHit = allowHit - 1
			image_alpha = .5
		}
		else{
			image_alpha = 1
		}	
		if global.bossHelp2 = 2{
			if state = 0{
				if x > 500{
					x = x -5
				}
				else{
					state = 1
				}
			}
			if state = 1{
				if y > 370{
					y = y - 5
				}
				else{
					state = 2
				}
			}
			if state = 2{
				sprite_index = bigLadyFlat
				x = x + 20
				if place_meeting(x,y,Player) and global.allowDamage = 0{
					if global.playAs = 1{
						global.dippHealth = global.dippHealth - 3
						audio_play_sound(dippHurtSE,0,false)
					}
					global.isDamaged = 10
					global.allowDamage = 50
				}
				if x > giantBoss.x{
					sprite_index = bigLadyHand
					state = 3
				}
			}
		}
		if global.bossHelp2 = 3{
			if state = 0{
				sprite_index = bigLadyFist
				y = y - 5
				if y < 192{
					state = 1	
				}
			}
			if state = 1{
				if x < Player.x - 40{
					x = x + 5	
				}
				else{
					state = 2
				}
			}
			if state = 2{
				y = y + 20
				if place_meeting(x,y,Player) and global.allowDamage = 0{
					if global.playAs = 1{
						global.dippHealth = global.dippHealth - 3
						audio_play_sound(dippHurtSE,0,false)
					}
					global.isDamaged = 10
					global.allowDamage = 50
				}
				if place_meeting(x,y,Ground){
					sprite_index = bigLadyHand
					state = 3
				}
			}
		}	
		if global.bossHelp2 = 4{
			if state = 0{
				sprite_index = bigLadyFlat
				if y < Player.y{
					y = y + 5
				}
				if y < Player.y{
					y = y - 5	
				}
				if abs(Player.y - y) < 30{
					state = 1	
				}
			}
			if state = 1{
				x = x + 20
				if place_meeting(x,y,Player) and global.allowDamage = 0{
					if global.playAs = 1{
						global.dippHealth = global.dippHealth - 3
						audio_play_sound(dippHurtSE,0,false)
					}
					global.isDamaged = 10
					global.allowDamage = 50
				}
				if place_meeting(x+20,y,giantHandR) or place_meeting(x+20,y,Ground){
					sprite_index = bigLadyHand
					state = 3
				}
			}
		}
		if state = 3{
			if x > giantBoss.x - 288{
				x = x - 5
			}
			if y < giantBoss.y + 60{
				y = y + 5
			}
			if x < giantBoss.x - 280 and y > giantBoss.y + 50{
				global.bossHelp2 = 0
				state = 0 
			}
		}
	}
	else{
		if y < 864{
			y = y + 10	
		}
		if global.bossHelp2 = 2{
			global.bossHelp2 = 0 
		}
		if gHealth > 0{
			global.bossHelp2 = 0 
			state = 0
		}
	}
	if global.bossHelp1 > 400{
		gHealth = gHealth + 1
	}
}