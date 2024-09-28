if global.paused = -1{
	if place_meeting(x,y-(global.eGravity * 2),Player) and global.cameraActive = 1{
		Player.x = Player.x + (global.lastPressed * 3)
		timer = 50
		direct = global.lastPressed
	}
	else{
		if timer > 0 and global.cameraActive = 1{
			timer = timer -1 
			Player.x = Player.x + (global.lastPressed * 3)
		}
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
