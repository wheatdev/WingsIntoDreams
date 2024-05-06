depth = 10
type = 0 
if room = springFactory and global.storyProgress < 2{
	instance_destroy()
}
if room = springFactory{
	type = 1
}
if room = HUB1{
	if x = -1280{
		type = 2
	}
	if x = 896{
		type = 3
	}
	if x = 1664{
		type = 4
	}
	if x = 3392{
		type = 5
	}
	if x = 3904{
		type = 6
	}
}