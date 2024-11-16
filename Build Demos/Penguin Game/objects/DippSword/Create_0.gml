swordUse = 1
downStab = 0
if global.dippSpecial > 0 and (keyboard_check(ord("P")) or keyboard_check(ord("C"))){
	instance_destroy()
}
else{
	audio_play_sound(swordUseSE,0,false)
	if keyboard_check(vk_down) or keyboard_check(ord("S")){
		downStab = 1
	}
}