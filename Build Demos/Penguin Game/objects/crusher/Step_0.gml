if global.paused = -1{
	if active = 1{
		y = y + (global.eGravity * 2)
		if place_meeting(x,y+global.eGravity,Ground){
			active = 2
		}
		if place_meeting(x,y+global.eGravity,Player) and global.allowDamage = 0{
			if global.playAs = 1{
				audio_play_sound(dippHurtSE,0,false)
				global.dippHealth = global.dippHealth - 10
			}
			if global.playAs = 2{
				global.gumHealth = global.gumHealth - 5
			}
			global.isDamaged = 15
			global.allowDamage = 100
		}
	}
	if active = 2{
		y = y - global.eGravity
		if y < startY{
			active = 1
		}
	}
	if place_meeting(x,y-global.eGravity,Player) and global.allowDamage = 0{
		Player.y = Player.y - global.eGravity
	}
}