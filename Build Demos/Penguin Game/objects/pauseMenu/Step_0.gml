if global.paused = 1{
	visible = true
}
else{
	visible = false
}
x = Player.x
y = Player.y - 100

if global.paused = 1{
	if selected = -1{
		if keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D")){
			global.pauseX = global.pauseX + 1
		}
		if keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A")){
			global.pauseX = global.pauseX - 1
		}
	}
	if global.pauseX > 3{
		global.pauseX = 1
	}
	if global.pauseX < 1{
		global.pauseX = 3
	}
	if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")){
		selected = 1
	}
	if keyboard_check_pressed(ord("O")) or keyboard_check_pressed(ord("X")){
		selected = -1
	}
}