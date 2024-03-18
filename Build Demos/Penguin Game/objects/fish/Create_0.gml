fishcolor = irandom_range(1,4)
if fishcolor = 1{
	sprite_index = fish1
}
if fishcolor = 2{
	sprite_index = fish2
}
if fishcolor = 3{
	sprite_index = fish3
}
if fishcolor = 4{
	sprite_index = fish4
}
image_xscale = .3
image_yscale = .3
depth = 3
directX = irandom_range(-1,1)
directY = irandom_range(-1,1)
timer = 0 