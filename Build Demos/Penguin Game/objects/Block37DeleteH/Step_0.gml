if global.paused = -1{
	timer = timer + 1
	if timer > 5{
		instance_destroy()
	}
}	