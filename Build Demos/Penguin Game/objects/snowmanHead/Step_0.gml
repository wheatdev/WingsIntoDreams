if global.paused = -1{
	if state = 1{
		if flingx = 1{
			x = x - 20
			if place_meeting(x-20,y,Ground){
				x = x + 20
				state = 3
			}
			image_angle = image_angle + 15
		}
		else{
			x = x + 20
			if place_meeting(x+20,y,Ground){
				x = x - 20
				state = 3
			}
			image_angle = image_angle - 15
		}
		y = y - 5
		if place_meeting(x,y-5,Ground){
			state = 3
		}
		if y < flingy{
			state = 2
		}
	}
	if state = 2{
		y = y + global.eGravity
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity
			state = 3
		}
		if flingx = 1{
			x = x - 20
			image_angle = image_angle + 15
		}
		else{
			x = x + 20
			image_angle = image_angle - 15
		}
	}
	if state = 3{
		y = y + global.eGravity
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity
		}
		if place_meeting(x,y,DippSword) or place_meeting(x,y,gumShoot){
			flingy = y + 1000
			if place_meeting(x,y,DippSword) and (keyboard_check(ord("S")) or keyboard_check(vk_down)){
				global.pBounce = 60
			}
			if roll = 0{
				randDrop = irandom_range(0,10)
				roll = 1
				if randDrop = 10{
					instance_create_depth(x,y,0,heal2)
				}
				if randDrop = 9 or randDrop = 8{
					instance_create_depth(x,y,0,heal1)
				}
			}
			state = 4
		}
		if x < Player.x{
			x = x + 5
			if place_meeting(x+5,y,Ground){
				x = x - 5
			}
			image_angle = image_angle - 5
		}
		else{
			x = x - 5
			if place_meeting(x-5,y,Ground){
				x = x + 5
			}
			image_angle = image_angle + 5
		}
		if place_meeting(x,y,Player) and global.allowDamage = 0{
			if global.playAs = 1{
				global.dippHealth = global.dippHealth - 5
				audio_play_sound(dippHurtSE,0,false)
			}
			global.allowDamage = 40
			global.isDamaged = 10
		}
		if place_meeting(x+5,y,IceSlopeG1) or place_meeting(x-5,y,IceSlopeG2){
			y = y - 3.2
		}
		if place_meeting(x+5,y,IceSlopeN1) or place_meeting(x-5,y,IceSlopeN2){
			y = y - 6.4
		}
				
	}
	if state = 4{
		y = y + global.eGravity
		image_angle = image_angle + 10
		if y > flingy{
			instance_destroy()
		}
	}
	else{
		if Player.x < x{
			image_xscale = .35
		}
		else{
			image_xscale = -.35
		}
	}
	if state > 1 and place_meeting(x,y,snowmanWhole){
		instance_destroy()
	}
}
			