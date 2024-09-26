image_xscale = .1
image_yscale = .1

directX = 0
directY = 0

if keyboard_check(ord("W")) or keyboard_check(vk_up) or gamepad_button_check(0,gp_padu){
	directY = -1	
}
if keyboard_check(ord("S")) or keyboard_check(vk_down) or gamepad_button_check(0,gp_padd){
	directY = 1	
}
if keyboard_check(ord("A")) or keyboard_check(vk_left) or gamepad_button_check(0,gp_padl){
	directX = -1	
}
if keyboard_check(ord("D")) or keyboard_check(vk_right) or gamepad_button_check(0,gp_padr){
	directX = 1
}
if directX = 0 and directY = 0{
	directX = global.lastPressed
}