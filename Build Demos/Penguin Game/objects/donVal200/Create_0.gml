startY = y
direct = 1
depth = 3
image_xscale = 1
image_yscale = 1
if room = mineDownUnder{
	if global.minesUnlock > 2{
		instance_create_depth(x,y,0,goldSlimeHide)
		instance_destroy()
	}
}
if room = conicCaves and upgradeCap11 > 0{
	instance_destroy()	
}
