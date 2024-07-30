if playerCutscene.x > 150{
	active = 1
}
if active = 1{
	if (keyboard_check_pressed(ord("I")) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1)) and timer < 1{
		timer = 10
	}
	timer = timer - 1
}
if timer > 1{
	sprite_index = walterTalk
}
else{
	sprite_index = walterSmoke
}