if menu = 0{
	if selectY = 0{
		draw_text(x,y,"> NEW GAME")	
	}
	else{
		draw_text(x,y,"NEW GAME")	
	}
	if selectY = 1{
		draw_text(x,y+50,"> CONTINUE")	
	}
	else{
		draw_text(x,y+50,"CONTINUE")	
	}
	if selectY = 2{
		draw_text(x,y+100,"> TUTORIAL")	
	}
	else{
		draw_text(x,y+100,"TUTORIAL")	
	}
	if selectY = 3{
		draw_text(x,y+150,"> BONUS")	
	}
	else{
		draw_text(x,y+150,"BONUS")	
	}
}
if menu = 1{
	if selectY = 3{
		draw_text(x,y+150,"> BACK")	
	}
	else{
		draw_text(x,y+150,"BACK")	
	}	
}