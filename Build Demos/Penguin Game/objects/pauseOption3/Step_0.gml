if global.paused = 1{
	visible = true
}
else{
	visible = false
	selected = -1
}
x = Player.x
y = Player.y - (100 + active)

if global.pauseX = 3{
	active = 20
	if selected = 1{
		if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down){
			selectY = selectY + 1
		}
		if keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up){
			selectY = selectY - 1
		}
	}
	if keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")){
		if selected = -1{
			selected = 1
		}
		else{
			if global.upgrade > 0{
				if global.playAs = 1{
					if selectY = 1{
						global.dippHealth = global.dippHealth + 5
						global.dippHealthMax = global.dippHealthMax + 5
						global.upgrade = global.upgrade - 1
					}
					if selectY = 2{
						global.dippAttack = global.dippAttack + 1
						global.upgrade = global.upgrade - 1
					}
					if selectY = 3{
						global.dippSpeed = global.dippSpeed + 1
						global.upgrade = global.upgrade - 1
					}
			}
			}
		}
	}
	if keyboard_check_pressed(ord("O")) or keyboard_check_pressed(ord("X")){
		selected = -1
	}
	if selectY > 3{
		selectY = 1
	}
	if selectY < 1{
		selectY = 3
	}
}
else{
	active = 0
}