if global.paused = -1{
	image_xscale = direct 
	if dazed = 0{
		sprite_index = Kibi1
		y = y + global.eGravity
		image_angle = 0
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity	
			maxHeight = y - 500
			if place_meeting(x-(direct*32),y+64,Ground) and place_empty(x-(direct*32),y,Ground){
				x = x - (7* direct)
			}
			else{
				direct = direct * -1	
			}
		}
		if place_meeting(x,y,DippSword) or place_meeting(x,y,Dynamite) or place_meeting(x,y,dippBeam1) or place_meeting(x,y,gumShoot) or place_meeting(x,y,kibiKickedP) or place_meeting(x,y,kibiKicked){
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
		if (place_meeting(x,y,Player) or place_meeting(x,y,DippSword) or place_meeting(x,y,dippBeam1) or place_meeting(x,y,gumShoot) or  place_meeting(x,y,kibiKickedP) or place_meeting(x,y,kibiKicked)) and timer = 0{
			instance_create_depth(x,y-global.eGravity,0,kibiKicked)
			instance_destroy()	
		}	
	}
	if dazed = -1{
		y = y - global.eGravity
		sprite_index = kibi2
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
	if place_meeting(x,y,giantHandL) or place_meeting(x,y,giantHandR){
		instance_create_depth(x,y,0,kibiKicked)
		instance_destroy()	
	}
}