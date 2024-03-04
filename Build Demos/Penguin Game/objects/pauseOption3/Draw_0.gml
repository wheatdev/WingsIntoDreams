if global.pauseX = 3{
	if global.playAs = 1{
		if selectY = 1{
			draw_text(x-280,y-150,"> HEALTH: " + string(global.dippHealthMax))
		}
		else{
			draw_text(x-280,y-150,"HEALTH: " + string(global.dippHealthMax))
		}
		if selectY = 2{
			draw_text(x-280,y,"> ATTACK: " + string(global.dippAttack))
		}
		else{
			draw_text(x-280,y,"ATTACK: " + string(global.dippAttack))
		}
		if selectY = 3{
			draw_text(x-280,y+150,"> SPEED: " + string(global.dippSpeed))
		}
		else{
			draw_text(x-280,y+150,"SPEED: " + string(global.dippSpeed))
		}
	}
	draw_text(x-280, y + 250, "UPGRADES LEFT: " + string(global.upgrade))
}
draw_sprite(pauseoption3,0,x,y)