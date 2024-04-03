if room = Shop1{
	type = 1
	if global.storyProgress < 3{
		active = 1
		global.theMoney = global.theMoney + 500
		global.storyProgress = 3
		set = 0 
	}
	else{
		if global.storyProgress = 6{
			active = 1
			set = 6
		}
		else{
			active = 2
		}
	}
} 
words = ""
conversationIndex = 0 
selectY = 1
draw_set_color(c_white)
draw_set_font(MenuFontSmall)