if global.paused = -1{
	if global.bossHelp2 = 1{
		instance_create_depth(x,y,0,Block37Val0)
		instance_destroy()
	}
	if global.bossHelp2 = 0{
		if global.bossHelp1 = 1{
			x = Block37C.x 
			y = Block37C.y - 64
		}
		if global.bossHelp1 = 2{
			x = Block37C.x - 64
			y = Block37C.y 
		}
		if global.bossHelp1 = 3{
			x = Block37C.x 
			y = Block37C.y + 64
		}
		if global.bossHelp1 = 4{
			x = Block37C.x + 64
			y = Block37C.y 
		}
		if place_meeting(x,y+(global.mechanism*2),Ground){
			global.bossHelp2 = 1
		}
	}
}