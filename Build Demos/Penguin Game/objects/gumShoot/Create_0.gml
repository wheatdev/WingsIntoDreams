image_xscale = .1
image_yscale = .1

directX = 1
directY = 0

if keyboard_check(ord("W")) or keyboard_check(vk_up){
	directY = -1	
}
if keyboard_check(ord("S")) or keyboard_check(vk_down){
	directY = 1	
}
if keyboard_check(ord("A")) or keyboard_check(vk_left){
	directX = -1	
}
if keyboard_check(ord("D")) or keyboard_check(vk_right){
	directX = 1
}