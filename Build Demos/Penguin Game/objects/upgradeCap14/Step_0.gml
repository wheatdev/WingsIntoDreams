if direct = 1{
	y = y - 1
	if y < startY - 30{
		direct = 2
	}
}
if direct = 2{
	y = y + 1
	if y > startY + 30{
		direct = 1
	}
}
if place_meeting(x,y,Player) or place_meeting(x,y,kibiKicked) or place_meeting(x,y,kibiKickedP){
	if global.upgrade = 0 and global.upgradeTotal = 0{
		instance_create_depth(x,y,-10,brainTalk2)
	}
	global.upgrade = global.upgrade + 1
	global.upgrade14Get = 1
	audio_play_sound(upgradeGetSE,0,false)
	instance_destroy()
}