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
	if global.skyUnlock < 0{
		if selectY = 2{
			draw_text(x-280,y+80,"> Cloud Amulet")
		}
		else{
			draw_text(x-280,y+80,"Cloud Amulet")
		}
	}
	if global.leftovers = 1{
		if selectY = 3{
			draw_text(x-280,y+160,"> Leftovers")
		}
		else{
			draw_text(x-280,y+160,"Leftovers")
		}
	}
	if global.frogCoin = 2{
		if selectY = 4{
			draw_text(x-280,y+240,"> Frog Coin")
		}
		else{
			draw_text(x-280,y+240,"Frog Coin")
		}
	}
}
draw_sprite(pauseoption1,0,x,y)