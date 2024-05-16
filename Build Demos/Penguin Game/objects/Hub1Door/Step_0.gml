if global.paused = -1{
	if (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)) and place_meeting(x,y,Player){
		if type = 1{
			global.playerStartX = -1280
			global.playerStartY = -96
			room_goto(HUB1)
		}
		if type = 2{
			global.playerStartX = 120
			global.playerStartY = 563
			room_goto(springFactory)
		}
		if type = 3{
			room_goto(DippHouse)
		}
		if type = 4{
			room_goto(Shop1)
		}
		if type = 5{
		global.playerStartX = 640
		global.playerStartY = -1040
			if global.minesUnlock < 1{
				global.minesUnlock = 1
			}
			room_goto(mineDownUnder)
		}
		if type = 6{
			if global.minesUnlock < 2{
				global.minesUnlock = 2
			}
			global.playerStartX = 16576
			global.playerStartY = 1104
			room_goto(mineDownUnder)
		}
		if type = 7{
			global.playerStartX = 3904
			global.playerStartY = 1440
			room_goto(HUB1)
		}
	}
}