if downStab = 0{
	swordUse = swordUse + 1
	if swordUse > 40{
		instance_destroy()
	}
	if place_meeting(x,y+(global.eGravity * 2),Ground){
		if keyboard_check(vk_left) or keyboard_check(vk_right) or keyboard_check(ord("A")) or keyboard_check(ord("D")){
			sprite_index = dippSword22
		}
		else{
			sprite_index = dippSword12
		}
	}
	else{
		if keyboard_check(vk_left) or keyboard_check(vk_right) or keyboard_check(ord("A")) or keyboard_check(ord("D")){
			sprite_index = dippSword22
		}
		else{
			sprite_index = dippAirSword2
			swordUse = swordUse + 3
		}
	}
}

if downStab = 1{
	sprite_index = dippSword32
	if place_meeting(x,y+global.eGravity,Ground){
		instance_destroy()
	}
}
x = Dipp.x
y = Dipp.y
image_xscale = global.lastPressed/5