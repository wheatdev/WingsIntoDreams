xVal1 = 0
yVal2 = 0
if global.playAs = 1{
	image_xscale = .2
	image_yscale = global.eGravity/50	
}
if room = Shop1{
	type = 0
	xVal1 = 0
	yVal2 = 150
}
if room = springFactory{
	global.cameraActive = 0
	type = 1	
	xVal1 = 6
	yVal2 = 62.5
	depth = -4
	image_xscale = 1/xVal1
	image_yscale = global.eGravity/yVal2
}
if room = conicCaves{
	global.cameraActive = 0
	depth = -4
	type = 2	
	xVal1 = 0
	yVal2 = y - 300
}
if room = conCaveTemple{
	depth = -4
	type = 3
}
if room  = mineDownUnder{
	type = 4	
}
if room = donnerShipInside{
	type = 5
}