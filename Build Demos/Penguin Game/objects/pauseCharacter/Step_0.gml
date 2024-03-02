x = Player.x - 480
y = Player.y - 250
if global.playAs = 1{
	sprite_index = dippStand
	image_xscale = .3
	image_yscale = .3
}
if global.paused = 1{
	visible = true
}
else{
	visible = false
}