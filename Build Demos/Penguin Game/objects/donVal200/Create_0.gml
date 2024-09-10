startY = y
direct = 1
depth = 3
image_xscale = .2
image_yscale = .2
if room = mineDownUnder{
	if global.minesUnlock > 2{
		instance_create_depth(x,y,0,goldSlimeHide)
		instance_destroy()
	}
}
