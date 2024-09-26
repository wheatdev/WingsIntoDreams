image_xscale = .2
image_yscale = .2
depth = -5
type = 0
if room = springFactory{
	sprite_index = spring1
	type = 1
}
if room = conicCaves{
	sprite_index = scarf
	type = 3
}
if room = mineDownUnder and x < 5000{
	sprite_index = dynamite
	type = 2
}
