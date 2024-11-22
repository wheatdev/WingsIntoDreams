if place_meeting(x,y,breakablePost) and global.minesUnlock = 2{
	instance_destroy()
}
if room = mineDownUnder{
	image_blend = c_blue
}
if room = conicCaves or room = HUB1{
	sprite_index = testice
}
if room = conCaveTemple{
	image_blend = c_purple	
}
if room = donnerShipInside{
	image_blend = c_orange
}