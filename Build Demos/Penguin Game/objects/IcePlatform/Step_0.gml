if global.paused = -1{
	if place_meeting(x,y-(global.eGravity * 2),Player){
		Player.x = Player.x + (global.lastPressed * 3)
	}
	if place_meeting(x,y-global.eGravity*2, Player) or place_meeting(x,y-global.eGravity*2, seal) or place_meeting(x,y-global.eGravity*2, snowmanWhole) or place_meeting(x,y-global.eGravity*2, snowmanHead){
		y = y + 3
		if y > startY +40{
			y = y - 3
		}
	}
	else{
		y = y - 3
		if y < startY{
			y = y + 3
		}
	}
}