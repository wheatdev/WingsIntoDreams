if global.paused = -1{
	if active = 0{
		y = y + 5
		if place_meeting(x,y+global.eGravity,Ground) and y > -13120{
			if type = 1{
				active = 1	
			}
			else{
				active = 2
			}
		}
	}
	if active = 1{
		global.talking = 1
		global.cameraActive = -1
		if global.cutsceneTimer = -2{
			active = 2	
		}
	}
	if active = 2{
		global.talking = 0
		global.cameraActive = -2
		if audio_is_playing(helishipBossMusic){
			if gHealth > 0{
				image_xscale = (.25 * global.bossHelp2)
				y = y + global.eGravity
				if place_meeting(x,y+global.eGravity,Ground){
					y = y - global.eGravity
					jumpState = 0
					maxHeight = y - (25 * global.eGravity)
					if attack = 4 or attack = 5{
						instance_create_depth(x,y+20,0,A2CBossShotH)	
					}
				}
				if place_meeting(x,y,DippSword) and allowHit = 0{
					gHealth = gHealth - global.dippAttack
					allowHit = 40
					if keyboard_check(ord("S")) or keyboard_check(vk_down){
						global.pBounce = 30	
					}
				}
				if place_meeting(x,y,Dynamite) and allowHit = 0{
					gHealth = gHealth - (global.dippAttack * 2)
					allowHit = 70
				}
				if allowHit > 0{
					allowHit = allowHit -1	
					image_alpha = .5
				}
				else{
					image_alpha = 1
				}
				if place_meeting(x,y,Player) and allowHit = 0 and global.allowDamage = 0{
					if global.playAs = 1{
						audio_play_sound(dippHurtSE,0,false)
						global.dippHealth = global.dippHealth -2
					}
					global.isDamaged = 10
					global.allowDamage = 50
				}
				global.bossHelp1 = attack
				if attack = 0{
					x = x - 8
					global.bossHelp2 = -1
					if x < xBarrierL{
						attack = irandom_range(0,9)
					}
				}
				if attack = 1{
					x = x + 8
					global.bossHelp2 = 1
					if x > xBarrierR{
						attack = irandom_range(0,9)
					}
				}
				if attack = 2{
					x = x - 18	
					global.bossHelp2 = -1
					if x < xBarrierL{
						attack = irandom_range(0,9)
					}
				}
				if attack = 3{
					x = x + 18	
					global.bossHelp2 = 1
					if x > xBarrierR{
						attack = irandom_range(0,9)
					}
				}
				if attack = 4{
					y = y - (global.eGravity * 2)
					if Player.x > x{
						global.bossHelp2 = 1
					}
					else{
						global.bossHelp2 = -1
					}
					if global.eGravity > 0{
						if y < maxHeight{
							instance_create_depth(x,y+20,0,A2CBossShotH)
							attack = irandom_range(0,9)
						}
					}
					else{
						if y > maxHeight{
							instance_create_depth(x,y+20,0,A2CBossShotH)
							attack = irandom_range(0,9)
						}
					}
				}
				if attack = 5{
					if timer < 5{
					if Player.x > x{
						global.bossHelp2 = 1
					}
					else{
						global.bossHelp2 = -1
					}
						if jumpState = 0{
							y = y - (global.eGravity * 2)
							if global.eGravity > 0{
								if y < maxHeight{
									instance_create_depth(x,y+20,0,A2CBossShotH)
									jumpState = 1
									timer = timer + 1	
								}
							}
							else{
								if y > maxHeight{
									instance_create_depth(x,y+20,0,A2CBossShotH)
									jumpState = 1
									timer = timer + 1	
								}
							}
						}
					}
					else{
						timer = 0
						attack = irandom_range(0,9)
					}
				}
				if attack = 6{
					x = x - 18	
					if x < xBarrierR - 200 and place_meeting(x,y+global.eGravity,Ground){
						jumpState = 0
					}
					if jumpState = 0{
						y = y -(global.eGravity * 2)
						if global.eGravity > 0{
							if y < maxHeight{
								jumpState = 1	
							}
						}
						else{
							if y > maxHeight{
								jumpState = 1	
							}
						}
					}	
					global.bossHelp2 = -1
					if x < xBarrierL{
						attack = irandom_range(0,9)
					}
				}
				if attack = 7{
					x = x + 18	
					if x > xBarrierL + 200 and place_meeting(x,y+global.eGravity,Ground){
						jumpState = 0
					}
					if jumpState = 0{
						y = y -(global.eGravity * 2)
						if global.eGravity > 0{
							if y < maxHeight{
								jumpState = 1	
							}
						}
						else{
							if y > maxHeight{
								jumpState = 1	
							}
						}
					}	
					global.bossHelp2= 1
					if x > xBarrierR{
						attack = irandom_range(0,9)
					}
				}
				if attack = 8{
					global.bossHelp2 = -1
					x = x - 8
					if place_meeting(x,y-global.eGravity,Ground){
						y = y + global.eGravity 	
					}
					if global.eGravity > 0{
						if y > maxHeight - 300{
							y = y - (global.eGravity  * 2.5)
						}
					}
					else{
						if y < maxHeight + 300{
							y = y + (global.eGravity  * 2.5)
						}
					}
					if x < xBarrierL{
						attack = irandom_range(0,9)
					}
				}
				if attack = 9{
					x = x + 8
					if place_meeting(x,y-global.eGravity,Ground){
						y = y + global.eGravity 	
					}
					global.bossHelp2 = 1
					if global.eGravity > 0{
						if y > maxHeight - 300{
							y = y - (global.eGravity  * 2.5)
						}
					}
					else{
						if y < maxHeight + 300{
							y = y + (global.eGravity  * 2.5)
						}
					}
					if x > xBarrierR{
						attack = irandom_range(0,9)
					}
				}
			}
			else{
				global.playerStartX = Player.x 
				global.cutsceneTimer = 0
				active = 3
			}
		}
		else{
			audio_stop_all()
			audio_play_sound(helishipBossMusic,0,true)
		}
	}
	if active = 3{
		global.talking = 1
		global.cameraActive = -1
		y = y + global.eGravity
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity	
		}
	}
}