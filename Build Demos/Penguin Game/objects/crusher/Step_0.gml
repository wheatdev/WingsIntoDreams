if global.paused = -1{
	if active = 1{
		y = y + (global.eGravity * 2)
		if place_meeting(x,y+global.eGravity,Ground){
			active = 2
		}
		if place_meeting(x,y+global.eGravity,Dipp) and global.allowDamage = 0{
			audio_play_sound(dippHurtSE,0,false)
			global.dippHealth = global.dippHealth - 10
			global.allowDamage = 100
			allowRide = 0
		}
	}
	if active = 2{
		y = y - global.eGravity
		if y < startY{
			active = 1
		}
	}
	if place_meeting(x,y-global.eGravity,Dipp) and allowRide = 1{
		Dipp.y = Dipp.y - global.eGravity
	}
}
if global.allowDamage = 0 {
	allowRide = 1
}