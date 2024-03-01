if keyboard_check(ord("A")) or keyboard_check(vk_left){
	image_angle = image_angle + 5
}
if keyboard_check(ord("D")) or keyboard_check(vk_right){
	image_angle = image_angle - 5
}
// Inherit the parent event
event_inherited();

