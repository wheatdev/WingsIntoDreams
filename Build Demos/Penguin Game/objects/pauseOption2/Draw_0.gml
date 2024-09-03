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
				draw_text(x+350,y-150,"> DYNA")
			}
			else{
				draw_text(x+350,y-150,"DYNA")
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
		if global.dippCloudGet = 1{
			if selectX = 3 and selectY = 2{
				draw_text(x+350,y-50,"> CLOUD")	
			}
			else{
				draw_text(x+350,y-50,"CLOUD")	
			}
		}
		if global.dippIceGet = 1{
			if selectX = 1 and selectY = 3{
				draw_text(x-280,y+50,"> I. BEAM")	
			}
			else{
				draw_text(x-280,y+50,"I. BEAM")
			}
		}
		if global.dippFireGet = 1{
			if selectX = 2 and selectY = 3{
				draw_text(x,y+50, "> F. BURST")
			}
			else{
				draw_text(x,y+50, "F. BURST")
			}
		}
		if (global.dippSnowballGet = 1 or global.dippIceGet = 1) and global.dippFireGet = 1{
			if selectX = 3 and selectY = 3{
				draw_text(x+350,y+50, "> BUBBLE")
			}
			else{
				draw_text(x+350,y+50,"BUBBLE")	
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
		if selectY = 1 and selectX = 3{
			draw_text(x+280,y-150,"> JET")
		}
		else{
			draw_text(x+280,y-150,"JET")
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