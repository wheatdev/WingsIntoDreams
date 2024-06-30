depth = 10
type = 0 
if room = springFactory and global.storyProgress < 2{
	instance_destroy()
}
if room = springFactory{
	type = 1
}
if room = HUB1{
	if x = 1536{
		type = 2
	}
	if x = 3712{
		type = 3
	}
	if x = 4480{
		type = 4
	}
	if x = 6208{
		type = 5
	}
	if x = 6720{
		type = 6
	}
}
if room = mineDownUnder{
	type = 7
}
