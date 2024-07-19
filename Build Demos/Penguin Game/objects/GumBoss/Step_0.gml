if global.paused = -1{
	if active = 0{
		y = y + 5
		if place_meeting(x,y+5,Ground) and y > -13120{
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
				y = y + global.eGravity
				if place_meeting(x,y+global.eGravity,Ground){
					y = y - global.eGravity
					jumpState = 0
					maxHeight = y - (25 * global.eGravity)
				}
				global.bossHelp1 = attack
				if attack = 0{
					x = x - 8
					global.bossHelp2 = -1
					if x < xBarrierL{
						attack = 1
					}
				}
				if attack = 1{
					x = x + 8
					global.bossHelp2 = 1
					if x > xBarrierR{
						attack = 2
					}
				}
				if attack = 2{
					x = x - 18	
					global.bossHelp1 = -1
					if x < xBarrierL{
						attack = 3
					}
				}
				if attack = 3{
					x = x + 18	
					global.bossHelp1 = 1
					if x > xBarrierR{
						attack = 4
					}
				}
				if attack = 4{
					y = y - (global.eGravity * 2)
					if global.eGravity > 0{
						if y < maxHeight{
							attack = 5
						}
					}
					else{
						if y > maxHeight{
							attack = 5
						}
					}
				}
				if attack = 5{
					if timer < 5{
						if jumpState = 0{
							y = y - (global.eGravity * 2)
							if global.eGravity > 0{
								if y < maxHeight{
									jumpState = 1
									timer = timer + 1	
								}
							}
							else{
								if y > maxHeight{
									jumpState = 1
									timer = timer + 1	
								}
							}
						}
					}
					else{
						timer = 0
						attack = 6
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
					global.bossHelp1 = 1
					if x < xBarrierL{
						attack = 7
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
					global.bossHelp1 = 1
					if x > xBarrierR{
						attack = 0
					}
				}
				if attack = 8{
					x = x - 8
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
						attack = 0
					}
				}
				if attack = 9{
					x = x + 8
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
						attack = 0
					}
				}
			}
		}
		else{
			audio_stop_all()
			audio_play_sound(helishipBossMusic,0,true)
		}
	}
}