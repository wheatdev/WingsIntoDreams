image_alpha = .7
image_xscale = .7
image_yscale = .7
depth = 4
if global.key1 > 0{
	instance_destroy()
}
if room = HUB1 and global.storyProgress < 6{
	instance_destroy()
}