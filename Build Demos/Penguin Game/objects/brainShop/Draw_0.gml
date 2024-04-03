if type = 1{
	draw_text(0,100,"Don: "+ string(global.theMoney))
	if active = 1{
		draw_text(300,200,words)
	}
	if active = 2{
		if global.minesUnlock = 0{
			if selectY = 1{
				draw_text(300,0,"> Tip off about Abandoned Mines (150 Don)")
			}
			else{
				draw_text(300,0,"Tip off about Abandoned Mines (150 Don)")
			}
		}
		else{
			if selectY = 1{
				draw_text(300,0,"> Tip off about Abandoned Mines")
			}
			else{
				draw_text(300,0,"Tip off about Abandoned Mines")
			}
		}
		if global.storyProgress < 4{
			if selectY = 2{
				draw_text(300,100,"> Rumors abount Ancient Temple (300 Don)")
			}
			else{
				draw_text(300,100,"Rumors about Ancient Temple (300 Don)")
			}
		}
		else{
			if selectY = 2{
				draw_text(300,100,"> Rumors abount Ancient Temple")
			}
			else{
				draw_text(300,100,"Rumors about Ancient Temple")
			}
		}
		if global.escapeRope = 0{
			if selectY = 3{
				draw_text(300,200,"> Buy Escape Rope (50 Don)")
			}
			else{
				draw_text(300,200,"Buy Escape Rope (50 Don)")
			}
		}
		if global.arcade1 = 0{
			if selectY = 4{
				draw_text(300,300,"> Buy Arcade Machine (200 Don)")
			}
			else{
				draw_text(300,300,"Buy Arcade Machine (200 Don)")
			}
		}
		if selectY = 5{
			draw_text(300,400,"> Talk")
		}
		else{
			draw_text(300,400,"Talk")	
		}
		if selectY = 6{
			draw_text(300,500,"> Leave")
		}
		else{
			draw_text(300,500,"Leave")
		}
	}
}