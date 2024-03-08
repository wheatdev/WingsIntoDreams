if global.pauseX = 2{
	if global.playAs = 1{
		if selectY = 1 and selectX = 1{
			draw_text(x-280,y-150,"> NONE")
		}
		else{
			draw_text(x-280,y-150,"NONE")
		}
		if global.dippSpringGet = 1{
			if selectY = 1 and selectX = 2{
				draw_text(x,y-150,"> SPRING")
			}
			else{
				draw_text(x,y-150,"SPRING")
			}	
		}
	}
	if global.playAs = 2{
		if selectY = 1 and selectX = 1{
			draw_text(x-280,y-150,"> NONE")
		}
		else{
			draw_text(x-280,y-150,"NONE")
		}
		if selectY = 1 and selectX = 2{
			draw_text(x,y-150,"> DASH")
		}
		else{
			draw_text(x,y-150,"DASH")
		}	
	}
}
draw_sprite(pauseoption2,0,x,y)