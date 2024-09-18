type = 0
cindex = 0
words = ""
words2 = ""
words3 = ""
state = 0
selectX = -1
selectY = 0
icon = 0
if room = springFactoryBoss{
	x = 2016
	y = 2528
	type = 1	
}
if room = conicCaves{
	x = 34656
	y = 4384
	type = 2
}
if room = HUB2{
	x = 896
	y = 736
	type = 3
}
if room = donnerShipInside{
	type = 4
}
if room = hopperHeliship{
	x = 33900
	y = -12850
	type = 5	
}
if room = skyHighHunting{
	x = -1574
	y =	-1564
	type = 6
	if global.skyUnlock = 5{
		cindex = 9
	}
}
if room = skyHighHuntingBoss{
	x = 672
	y = 352
	type = 8
	if global.skyUnlock = 4{
		cindex = 7	
	}
}

draw_set_font(MenuFontSmall)
draw_set_color(c_white)
depth = -10