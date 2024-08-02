if global.paused = -1{
	if place_meeting(x,y+64,Ground){
		global.bossHelp1 = 1
	}	
	if global.bossHelp1 = 1{
		if value = 0{
			instance_create_depth(x,y,0,Block37Val0)
		}
		if value = 1{
			instance_create_depth(x,y,0,Block37Val1)
		}
		if value = 2{
			instance_create_depth(x,y,0,Block37Val2)
		}
		if value = 3{
			instance_create_depth(x,y,0,Block37Val3)
		}
		if value = 4{
			instance_create_depth(x,y,0,Block37Val4)
		}
		if value = 5{
			instance_create_depth(x,y,0,Block37Val5)
		}
		if value = 6{
			instance_create_depth(x,y,0,Block37Val6)
		}
		if value = 7{
			instance_create_depth(x,y,0,Block37Val7)
		}
		instance_destroy()
	}
}