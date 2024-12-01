if global.paused = -1{
	if active = 0{
		y = y + 5
		if place_meeting(x,y+global.eGravity,Ground) and y > 800{
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
				image_yscale = (global.eGravity/10)
				image_xscale = global.bossHelp2
				y = y + global.eGravity
				if place_meeting(x,y+global.eGravity,Ground){
					y = y - global.eGravity
					jumpState = 0
					maxHeight = y - (25 * global.eGravity)
					if attack = 4 or attack = 5{
						instance_create_depth(x,y+(4*global.eGravity),0,A2CBossShotH)
					}
				}
				if place_meeting(x,y,DippSword) and allowHit = 0{
					gHealth = gHealth - global.dippAttack
					allowHit = 40
					if keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd){
						global.pBounce = 30	
					}
				}
				if place_meeting(x,y,Dynamite) and allowHit = 0{
					gHealth = gHealth - (global.dippAttack * 2)
					allowHit = 70
				}
				if place_meeting(x,y,kibiKickedP) and allowHit = 0{
					gHealth = gHealth - (global.dippAttack * 2)
					allowHit = 50
				}
				if place_meeting(x,y,dippBeam1) and allowHit = 0{
					gHealth = gHealth - global.dippAttack
					allowHit = 5
				}
				if place_meeting(x,y,gumShoot) and allowHit = 0{
					gHealth = gHealth - global.gumAttack
					allowHit = 50
				}
				if allowHit > 0{
					allowHit = allowHit -1	
					image_alpha = .5
					sprite_index = A2CPain
				}
				else{
					image_alpha = 1
				}
				if place_meeting(x,y,Player) and allowHit = 0 and global.allowDamage = 0{
					if global.playAs = 1{
						audio_play_sound(dippHurtSE,0,false)
						global.dippHealth = global.dippHealth - 3
					}
					if global.playAs = 2{
						global.gumHealth = global.gumHealth - 3
					}
					global.isDamaged = 10
					global.allowDamage = 50
				}
				global.bossHelp1 = attack
				if attack = 0{
					x = x - 8
					sprite_index = A2CStand
					global.bossHelp2 = -1
					if x < xBarrierL{
						attack = irandom_range(0,9)
					}
				}
				if attack = 1{
					x = x + 8
					sprite_index = A2CStand
					global.bossHelp2 = 1
					if x > xBarrierR{
						attack = irandom_range(0,9)
					}
				}
				if attack = 2{
					x = x - 18	
					sprite_index = A2CDash
					global.bossHelp2 = -1
					if x < xBarrierL{
						attack = irandom_range(0,9)
					}
				}
				if attack = 3{
					x = x + 18	
					sprite_index = A2CDash
					global.bossHelp2 = 1
					if x > xBarrierR{
						attack = irandom_range(0,9)
					}
				}
				if attack = 4{
					sprite_index = A2CStand
					y = y - (global.eGravity * 2)
					if Player.x > x{
						global.bossHelp2 = 1
					}
					else{
						global.bossHelp2 = -1
					}
					if global.eGravity > 0{
						if y < maxHeight{
							instance_create_depth(x,y+(4*global.eGravity),0,A2CBossShotH)
							attack = irandom_range(0,9)
						}
					}
					else{
						if y > maxHeight{
							instance_create_depth(x,y+(4*global.eGravity),0,A2CBossShotH)
							attack = irandom_range(0,9)
						}
					}
				}
				if attack = 5{
					sprite_index = A2CStand
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
									instance_create_depth(x,y+(5*global.eGravity),0,A2CBossShotH)
									jumpState = 1
									timer = timer + 1	
								}
							}
							else{
								if y > maxHeight{
									instance_create_depth(x,y+(4*global.eGravity),0,A2CBossShotH)
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
					sprite_index = A2CDash
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
					sprite_index = A2CDash
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
					sprite_index = A2CJet
					global.bossHelp2 = -1
					x = x - 8
					if place_meeting(x,y-(global.eGravity *2.5),Ground){
						y = y + (global.eGravity * 2.5)	
					}
					if global.eGravity > 0{
						if y > maxHeight - 300{
							y = y - (global.eGravity  * 2.5)
						}
					}
					else{
						if y < maxHeight + 300{
							y = y - (global.eGravity  * 2.5)
						}
					}
					if x < xBarrierL{
						attack = irandom_range(0,9)
					}
				}
				if attack = 9{
					x = x + 8
					sprite_index = A2CJet
					if place_meeting(x,y-(global.eGravity * 2.5),Ground){
						y = y + (global.eGravity * 2.5)
					}
					global.bossHelp2 = 1
					if global.eGravity > 0{
						if y > maxHeight - 300{
							y = y - (global.eGravity  * 2.5)
						}
					}
					else{
						if y < maxHeight + 300{
							y = y - (global.eGravity  * 2.5)
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
				if room = hopperHelishipUnderside{
					global.playerStartX = 640
					global.playerStartY = 480
					global.eGravity = 10
					room_goto(jungleRapidRunway)	
				}
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
	if active = 4{
		global.cameraActive = 0
		if global.cutsceneTimer = -2{
			global.cutsceneTimer = -2
			active = 2	
		}
	}
}