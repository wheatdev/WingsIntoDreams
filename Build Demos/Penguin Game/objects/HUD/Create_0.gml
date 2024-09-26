depth = -9
hide = -1
type = 0 
if room = donnerShipInside or room = donnerShipOutside or room = hopperHeliship{
	type = 1	
}
if room = skyHighHuntingBoss{
	type = 2	
}
if room = tutorial{
	type = 3	
}
instance_create_depth(x,y,0,specialMeter)