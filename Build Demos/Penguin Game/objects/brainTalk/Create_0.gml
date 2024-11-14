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
	x = global.playerStartX
	y = global.playerStartY
	type = 4
}
if room = hopperHeliship{
	x = 36900
	y = 1100
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
	x = 1376
	y = 452
	type = 8
	if global.skyUnlock = 4{
		cindex = 7	
	}
}
if room = tutorial{
	type = 9	
	x = 16450
	y = 1000
}
depth = -10
draw_set_font(MenuFontSmall)
draw_set_color(c_white)