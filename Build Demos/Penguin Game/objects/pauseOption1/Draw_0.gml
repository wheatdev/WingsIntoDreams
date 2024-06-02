if global.pauseX = 1{
	if global.playAs = 1{
		draw_text(x-280,y-150,"CURRENTLY PLAYING AS: DIPP")
	}
	if global.playAs = 2{
		draw_text(x-280,y-150,"CURRENTLY PLAYING AS: GUM")
	}
	draw_text(x-550,y+100,"DON: " + string(global.theMoney))
	if global.escapeRope = 1{
		if selectY = 1{
			draw_text(x-280,y,"> Escape Rope")
		}
		else{
			draw_text(x-280,y,"Escape Rope")
		}
	}
}
draw_sprite(pauseoption1,0,x,y)