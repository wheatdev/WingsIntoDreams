if global.paused = -1{
	if (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu)) and place_meeting(x,y,Player){
		if type = 1{
			global.playerStartX = 1536
			global.playerStartY = 896
			room_goto(HUB1)
		}
		if type = 2{
			global.playerStartX = 1248
			global.playerStartY = 9056
			room_goto(springFactory)
		}
		if type = 3{
			room_goto(DippHouse)
		}
		if type = 4{
			room_goto(Shop1)
		}
		if type = 5{
		global.playerStartX = 3385
		global.playerStartY = 1640
			if global.minesUnlock < 1{
				global.minesUnlock = 1
			}
			room_goto(mineDownUnder)
		}
		if type = 6{
			if global.minesUnlock < 2{
				global.minesUnlock = 2
			}
			global.playerStartX = 19328
			global.playerStartY = 3664
			room_goto(mineDownUnder)
		}
		if type = 7{
			global.playerStartX = 6720
			global.playerStartY = 2432
			room_goto(HUB1)
		}
	}
}