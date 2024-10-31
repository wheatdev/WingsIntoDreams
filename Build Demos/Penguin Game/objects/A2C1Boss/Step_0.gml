if global.paused = -1{
	if active = 0{
		y = y + 6
		if y > startY + 512{
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
				if global.playAs = 2{
					global.gumHealth = global.gumHealth - 1	
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

			if pXPos < startX - 96 and pXPos > startX - 774 and Player.y > startY + 768{
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
					if x < startX -954{
						xWant = 1
					}
					if x > startX - 4{
						xWant = 2
					}
					setup = 1
				}
				if setup = 1{
					if xWant = 1{
						xDirect = 1
						if xPos > startX{
							setup = 2
						}
					}
					if xWant = 2{
						xDirect = -1
						if xPos  < startX - 960{
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
					if y < startY + 528{
						yWant = 1
					}
					if y > startY + 848{
						yWant = 2
					}
					setup = 1
				}
				if setup = 1{
					if yWant = 1{
						yDirect = 1
						if yPos > startY + 856{
							setup = 2
						}
					}
					if yWant = 2{
						yDirect = -1
						if yPos  < startY + 528{
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
					if x < startX - 954{
						xWant = 1
					}
					if x > startX - 4{
						xWant = 2
					}
					bounceTimer = irandom_range(1,3)
					setup = 1
				}
				if setup = 1{
					if xWant = 1{
						xDirect = 1
						if xPos > startX{
							bounce = bounce + 1
							xWant = 2
						}
					}
					if xWant = 2{
						xDirect = -1
						if xPos  < startX - 960{
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
					if y < startY + 528{
						yWant = 1
					}
					if y > startY + 848{
						yWant = 2
					}
					bounceTimer = irandom_range(1,3)
					setup = 1
				}
				if setup = 1{
					if yWant = 1{
						yDirect = 1
						if yPos > startY + 864{
							bounce = bounce + 1
							yWant = 2
						}
					}
					if yWant = 2{
						yDirect = -1
						if yPos  < startY + 528{
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
				if yPos < startY + 864{
					yDirect = 1
				}
				if yPos > startY + 864{
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
			if place_meeting(x,y,dippBeam1) and allowHit = 0{
				aHealth = aHealth - global.dippAttack
				allowHit = 5
			}
			if place_meeting(x,y,Dynamite) and allowHit = 0{
				aHealth = aHealth - (global.dippAttack * 2)
				allowHit = 20
			}
			if place_meeting(x,y,gumShoot) and allowHit = 0{
				aHealth = aHealth - global.gumAttack
				allowHit = 10
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
			if room = donnerShipInside{
				instance_create_depth(21376,5568,0,DonnerDoor)
			}
			if room = tutorial{
				global.talking = 1
			}	
			active = 2
		}	
	}
	if active = 2{
		image_angle = image_angle + 15
		image_alpha = 1
		y = y + global.eGravity
	}
}