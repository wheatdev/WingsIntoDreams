type = 0
hVal1 = 0
hVal2 = 0
depth = -4
image_xscale = .2
image_yscale = .2
if room = springFactory{
	hVal1 = 6
	hVal2 = 62.5
	type = 1
}
if room = mineDownUnder{
	type = 3	
}
if room = testRoom{
	if global.cameraActive = 1{
		global.cameraActive = 0
		hVal2 = y - 300
		type = 4
	}
}
if room = conCaveTemple or room = hopperHelishipUnderside{
	type = 5
}
if room = donnerShipInside{
	type = 6
}
if global.cameraActive = -1 or room = Shop1 or room = Shop2{
 type = -1	
}

if global.cutsceneTimer = 1{
	if room = donnerShipOutside or skyHighHunting{
		hVal1 = 0	
	}
	else{
		hVal1 = 2
	}
	hVal2 = y
	type = 7
}
if global.itemGet = 1{
	type = 2	
}
if room = conicCaves{
	if global.cameraActive = 1{
		global.cameraActive = 0
		type = 8	
	}
}