swordUse = 1
downStab = 0
audio_play_sound(swordUseSE,0,false)
if keyboard_check(vk_down) or keyboard_check(ord("S")){
	downStab = 1
}
image_xscale = .2
image_yscale = .2
image_alpha = .7