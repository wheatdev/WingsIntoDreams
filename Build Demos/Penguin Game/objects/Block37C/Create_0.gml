instance_create_depth(x-64,y,0,Block37L)
instance_create_depth(x+64,y,0,Block37R)
instance_create_depth(x,y-64,0,Block37U)
value = irandom_range(0,7)
rotate = irandom_range(1,4)
global.bossHelp1 = 0
if value = 0{
	sprite_index = threeseven0
}
if value = 1{
	sprite_index = threeseven1
}
if value = 2{
	sprite_index = threeseven2
}
if value = 3{
	sprite_index = threeseven3
}
if value = 4{
	sprite_index = threeseven4
}
if value = 5{
	sprite_index = threeseven5
}
if value = 6{
	sprite_index = threeseven6
}
if value = 7{
	sprite_index = threeseven7
}