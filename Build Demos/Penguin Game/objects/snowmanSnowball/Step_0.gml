if global.paused = -1{
	if state = 1{
		y = y - 2
		if y < maxHeight{
			state = 2
		}
	}
	if state = 2{
		y = y + 2
	}
	x = x + (direct * 10)
	if place_meeting(x,y,Ground){
		instance_destroy()
	}
	if place_meeting(x,y,DippSword) or place_meeting(x,y,gumShoot) or place_meeting(x,y,Dynamite){
		state = 3
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
	}
	if state = 3{
		y = y + global.eGravity
	}
	if state < 3{
		if place_meeting(x,y,Player) and global.allowDamage = 0{
			if global.playAs = 1{
				audio_play_sound(dippHurtSE,0,false)
				global.dippHealth = global.dippHealth - 2
			}
			global.allowDamage = 40
			global.isDamaged = 10
		}
	}
}