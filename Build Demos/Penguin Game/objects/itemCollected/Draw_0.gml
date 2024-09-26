if type > 0{
	draw_sprite(textbox,0,x-750,y-450)
	if type = 1{
		draw_text(x-500,y-350,"ITEM GET: SPRING")
		draw_text(x-500,y-300,"The spring will allow you to bounce higher than your normal jump.")
	}	
	if type = 2{
		draw_text(x-500,y-350,"ITEM GET: DYNAMITE")
		draw_text(x-500,y-300,"The dynamite will let you destory some blocks, and do extra damage.")
	}
	if type = 3{
		draw_text(x-500,y-350,"ITEM GET: GLIDE")
		draw_text(x-500,y-300,"The scarf will slow your descent, allowing you to cross large gaps.")
	}
	draw_text(x-500,y-250,"Use it with ''P'',''C'' or the right face button.")
	draw_text(x-500,y-200,"Press ''P'',''C'', or the right face button to continue.")
}