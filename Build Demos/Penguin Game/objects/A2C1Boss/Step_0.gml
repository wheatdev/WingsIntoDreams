if global.paused = -1{
	if active = 0{
		y = y + 6
		if y > 704{
			active = 1
		}
	}
	if active = 1{
		if aHealth > 0{
			global.cameraActive = -2
			if place_meeting(x,y,Player) and global.allowDamage = 0 and allowHit = 0 {
				if global.playAs = 1{
					global.dippHealth = global.dippHealth - 1
					audio_play_sound(dippHurtSE,0,false)
				}
				global.allowDamage = 40
				global.isDamaged = 10
			}
			x = x + (xDirect * 12)
			y = y + (yDirect * 12)
			xPos = x
			yPos = y
			pXPos = Player.x
			rangeY = abs(Player.y -y )

			if pXPos < 16768 and pXPos > 16090 and Player.y > 960{
				hideTimer = hideTimer + 1	
			}
			else{
				hideTimer = hideTimer - 1
			}
			if hideTimer > 100{
				attack = 4
			}
			if hideTimer < 0{
				attack =  irandom_range(0,3)
				hideTimer = 0
			}
			if setup = 0{
				xDirect = 0
				yDirect = 0
				if rangeY < 200{
					shootAngle = 1
				}
				else{
					shootAngle = 2
				}	
			}
			if setup = 1{
			
				shootTimer = shootTimer + 1
				if shootTimer = 30{
					if shootAngle = 1{
						instance_create_depth(x,y,0,A2CBossShotH)	
					}
					else{
						instance_create_depth(x,y,0,A2CBossShotV)	
					}
				}
				if shootTimer = 35{
					if shootAngle = 1{
						instance_create_depth(x,y,0,A2CBossShotH)	
					}
					else{
						instance_create_depth(x,y,0,A2CBossShotV)	
					}
				}
				if shootTimer > 39{
					if shootAngle = 1{
						instance_create_depth(x,y,0,A2CBossShotH)	
					}
					else{
						instance_create_depth(x,y,0,A2CBossShotV)	
					}
					shootTimer = 0	
				}
			}
			if attack = 0{
				if setup = 0{
					if x < 15910{
						xWant = 1
					}
					if x > 16860{
						xWant = 2
					}
					setup = 1
				}
				if setup = 1{
					if xWant = 1{
						xDirect = 1
						if xPos > 16864{
							setup = 2
						}
					}
					if xWant = 2{
						xDirect = -1
						if xPos  < 15904{
							setup = 2
						}
					}
				}
				if setup = 2{
					xWant = 0 
					xDirect = 0
					setup = 0
					attack =  irandom_range(0,3)
				}
			}
			if attack = 1{
				if setup = 0{
					if y < 720{
						yWant = 1
					}
					if y > 1040{
						yWant = 2
					}
					setup = 1
				}
				if setup = 1{
					if yWant = 1{
						yDirect = 1
						if yPos > 1056{
							setup = 2
						}
					}
					if yWant = 2{
						yDirect = -1
						if yPos  < 704{
							setup = 2
						}
					}
				}
				if setup = 2{
					yWant = 0 
					yDirect = 0
					setup = 0
					attack =  irandom_range(0,3)
				}
			}
			if attack = 2{
				if setup = 0{
					if x < 15910{
						xWant = 1
					}
					if x > 16860{
						xWant = 2
					}
					bounceTimer = irandom_range(1,3)
					setup = 1
				}
				if setup = 1{
					if xWant = 1{
						xDirect = 1
						if xPos > 16864{
							bounce = bounce + 1
							xWant = 2
						}
					}
					if xWant = 2{
						xDirect = -1
						if xPos  < 15904{
							bounce = bounce + 1
							xWant = 1
						}
					}
					if bounce > bounceTimer{
						setup = 2	
					}
				}
				if setup = 2{
					xWant = 0 
					xDirect = 0
					setup = 0
					bounce = 0
					bounceTimer = 0
					attack =  irandom_range(0,3)
				}
			}
			if attack = 3{
				if setup = 0{
					if y < 720{
						yWant = 1
					}
					if y > 1040{
						yWant = 2
					}
					bounceTimer = irandom_range(1,3)
					setup = 1
				}
				if setup = 1{
					if yWant = 1{
						yDirect = 1
						if yPos > 1056{
							bounce = bounce + 1
							yWant = 2
						}
					}
					if yWant = 2{
						yDirect = -1
						if yPos  < 704{
							bounce = bounce + 1
							yWant =1
						}
					}
					if bounce > bounceTimer{
						setup = 2
					}
				}
				if setup = 2{
					yWant = 0 
					yDirect = 0
					setup = 0
					bounce = 0
					bounceTimer = 0
					attack =  irandom_range(0,3)
				}	
			}
			if attack = 4{
				if yPos < 1056{
					yDirect = 1
				}
				if yPos > 1056{
					yDirect = 0	
				}
				xDirect = 0
				shootAngle = 1
			}
			if place_meeting(x,y,DippSword) and allowHit = 0{
				aHealth = aHealth - global.dippAttack
				if keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd){
					global.pBounce = 20	
				}
				allowHit = 20
			}
			if place_meeting(x,y,Dynamite) and allowHit = 0{
				aHealth = aHealth - (global.dippAttack * 2)
				allowHit = 20
			}
			if allowHit > 0{
				image_alpha = .5
				allowHit = allowHit - 1
			}
			else{
				image_alpha = 1
			}
		}
		else{
			instance_create_depth(16416,832,0,DonnerDoor)
			active = 2
		}	
	}
	if active = 2{
		image_angle = image_angle + 15
		image_alpha = 1
		y = y + global.eGravity
	}
}