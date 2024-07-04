x = Dipp.x
y = Dipp.y - 20
image_angle = image_angle - (10 * global.lastPressed)
if keyboard_check_released(ord("P")) or keyboard_check_released(ord("C")){
	instance_destroy()	
}
if place_meeting(x,y,water){
	instance_destroy()
}
if global.specialMeter < 1{
	instance_destroy()
}