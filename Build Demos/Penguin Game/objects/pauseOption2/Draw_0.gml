if global.pauseX = 2{
	if global.playAs = 1{
		if menu = 1{
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
			if global.dippCloudGet = 1 and global.skyUnlock > -1{
				if selectX = 3 and selectY = 2{
					draw_text(x+350,y-50,"> CLOUD")	
				}
				else{
					draw_text(x+350,y-50,"CLOUD")	
				}
			}
			if global.skyUnlock < 0{
				if selectX = 3 and selectY = 2{
					draw_text(x+350,y-50,"> KIBI")	
				}
				else{
					draw_text(x+350,y-50,"KIBI")	
				}
			}
			if global.dippIceGet = 1 or global.dippIceGet = 2{
				if selectX = 1 and selectY = 3{
					draw_text(x-280,y+50,"> I. BEAM")	
				}
				else{
					draw_text(x-280,y+50,"I. BEAM")
				}
			}
			if global.dippIceGet = 3 or global.dippIceGet = 4{
				if selectX = 1 and selectY = 3{
					draw_text(x-280,y+50,"> D. BEAM")	
				}
				else{
					draw_text(x-280,y+50,"D. BEAM")
				}
			}
			if global.dippFireGet > 0{
				if selectX = 2 and selectY = 3{
					draw_text(x,y+50, "> F. BURST")
				}
				else{
					draw_text(x,y+50, "F. BURST")
				}
			}
			if (global.dippSnowballGet = 1 or global.dippIceGet > 0) and global.dippFireGet > 0{
				if selectX = 3 and selectY = 3{
					draw_text(x+350,y+50, "> BUBBLE")
				}
				else{
					draw_text(x+350,y+50,"BUBBLE")	
				}
			}
			if global.dippIceGet = 2 or global.dippIceGet = 4{
				if selectX = 1 and selectY = 4{
					draw_text(x-280,y+150, "> I. BLOCK")
				}
				else{
					draw_text(x-280,y+150,"I. BLOCK")	
				}
			}
			if global.dippFireGet = 2{
				if selectX = 2 and selectY = 4{
					draw_text(x,y+150, "> F. PUNCH")
				}
				else{
					draw_text(x,y+150,"F. PUNCH")	
				}
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
		if selectX = 1 and selectY = 2{
			draw_text(x-280,y-50,"> ANTI-GRAV")
		}
		else{
			draw_text(x-280,y-50,"ANTI-GRAV")
		}
	}
	if selectX = 3 and selectY = 5{
		draw_text(x+350,y+250, "> NEXT")
	}
	else{
		draw_text(x+350,y+250, "NEXT")
	}
}
draw_sprite(pauseoption2,0,x,y)