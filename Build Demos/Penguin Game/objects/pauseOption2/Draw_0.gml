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
		if global.dippGlideGet = 1{
			if selectY = 2 and selectX = 1{
				draw_text(x-280,y-50,"> GLIDE")
			}
			else{
				draw_text(x-280,y-50,"GLIDE")
			}	
		}
		if global.dippDynaGet = 1{
			if selectY = 1 and selectX = 3{
				draw_text(x+280,y-150,"> DYNA")
			}
			else{
				draw_text(x+280,y-150,"DYNA")
			}	
		}
		if global.dippSnowballGet = 1{
			if selectY = 2 and selectX = 2{
				draw_text(x,y-50,"> SNOWBALL")
			}
			else{
				draw_text(x,y-50,"SNOWBALL")
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
	if selectX<1{
		selectX = 1
	}
	if selectX > 3{
		selectX = 3
	}
}
draw_sprite(pauseoption2,0,x,y)