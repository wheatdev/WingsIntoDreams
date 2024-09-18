depth = 5
image_xscale = .2
image_yscale = .2
if global.skyUnlock < 3{
	type = 0
	global.talking = 1
}
else{
	type = 1
}
gHealth = 10
allowHit = 0 
position = 2
maxHeight = y - 20
jumpState = 0
global.bossHelp1 = 0
global.bossHelp2 = 0 
attackTimer = 0 
moveTimer = 0
moving = 0