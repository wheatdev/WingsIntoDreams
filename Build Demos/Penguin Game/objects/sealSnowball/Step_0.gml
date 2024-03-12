if global.paused = -1{
	if active = 1{
		y = y + global.eGravity
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity
			size = size + .001
			x = x + (5 * direct)
			image_angle = image_angle + (direct *-5)
		}
		if place_meeting(x,y,Player) and global.allowDamage =0{
			if global.playAs = 1{
				global.dippHealth = global.dippHealth -1
				audio_play_sound(dippHurtSE,0,false)
			}
			if global.playAs = 2{
				global.gumHealth = global.gumHealth -1
			}
			global.allowDamage = 20
			global.isDamaged = 10
		}
		if place_meeting(x,y,DippSword){
			active = 0
			if roll = 0{
				randDrop = irandom_range(0,10)
				roll = 1
			}
			if randDrop = 10{
				instance_create_depth(x,y,0,heal2)
			}
			if randDrop = 9 or randDrop = 8{
				instance_create_depth(x,y,0,heal1)
			}
		}
		if place_meeting(x,y,water){
			size = size - .01
		}
		if size < .005{
			instance_destroy()
		}
		if place_meeting(x+(5*direct),y,IceSlope1) or place_meeting(x+(5*direct),y,IceSlope2){
			y = y - 6.4
		}
		if place_meeting(x+(5*direct),y,IceSlope3) or place_meeting(x+(5*direct),y,IceSlope4){
			y = y - 3.2
		}
		image_xscale = size
		image_yscale = size
	}
	else{
		y = y + global.eGravity
		if y > deathY{
			instance_destroy()
		}
	}
}