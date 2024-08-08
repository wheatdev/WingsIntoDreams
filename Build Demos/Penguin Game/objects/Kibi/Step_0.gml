if global.paused = -1{
	image_xscale = direct * .3
	if dazed = 0{
		y = y + global.eGravity
		image_angle = 0
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity	
			maxHeight = y - 500
			if place_meeting(x-(direct*32),y+64,Ground){
				x = x - (7* direct)
			}
			else{
				direct = direct * -1	
			}
		}
		if place_meeting(x,y,DippSword) or place_meeting(x,y,Dynamite){
			dazed = -1
			timer = 20
		}	
		if place_meeting(x,y,Player) and global.allowDamage = 0{
			if global.playAs = 1{
				global.dippHealth = global.dippHealth - 2
				audio_play_sound(dippHurtSE,0,false)
			}
			global.allowDamage = 40
			global.isDamaged = 10
		}
	}
	else{
		if place_meeting(x,y,Player) and timer = 0{
			instance_create_depth(x,y,0,kibiKicked)
			instance_destroy()	
		}	
	}
	if dazed = -1{
		y = y - global.eGravity
		image_angle = image_angle + 15
		if y < maxHeight{
			dazed = -2
		}
	}
	if dazed = -2{
		y = y + global.eGravity
		image_angle = image_angle + 15
		if place_meeting(x,y+global.eGravity,Ground){
			dazed = 200
		}
	}
	if dazed > 0{
		image_angle = 0
		dazed = dazed - 1
	}
	if timer > 0{
		timer = timer - 1	
	}
}