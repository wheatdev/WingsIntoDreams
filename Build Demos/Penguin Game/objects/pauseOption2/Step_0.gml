if global.paused = 1{
	visible = true
}
else{
	visible = false
}
x = Player.x
y = Player.y - (100 + active)

if global.pauseX = 2{
	active = 20
		if selected = 1{
		if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down){
			selectY = selectY + 1
		}
		if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up){
			selectY = selectY - 1
		}
		if keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right){
			selectX = selectX + 1
		}
		if keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left){
			selectX = selectX - 1
		}
		if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")){
			if selectX = 1 and selectY = 1{
				global.dippSpecial = 0
			}
			if selectX = 2 and selectY = 1 and global.dippSpringGet = 1{
				global.dippSpecial = 1
			}
		}
	}
	if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")){
		selected = 1
	}
	if keyboard_check_pressed(ord("O")) or keyboard_check_pressed(ord("X")){
		selected = -1
	}
}
else{
	active = 0
}