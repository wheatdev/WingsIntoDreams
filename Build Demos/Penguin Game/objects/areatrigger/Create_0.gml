type = 0
if room = conicCaves{
	type = 1
}
if room = donnerShipOutside{
	type = 2
}
if room =hopperHeliship{
	type = 3	
}
if room = HUB1{
	type = 4
	if global.skyUnlock < 0{
		instance_destroy()
	}
}
if room = skyHighHunting{
	if y < 1000 {
		type =6
	}
	else{
		type = 5
	}
}