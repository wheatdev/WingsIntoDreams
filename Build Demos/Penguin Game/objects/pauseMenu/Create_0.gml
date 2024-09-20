depth = -10
selected = -1
type = 0
if room = donnerShipInside or room = donnerShipOutside or room = hopperHeliship{
	type = 1	
}
if room = skyHighHuntingBoss{
	type = 2	
}
instance_create_depth(x,y,0,pauseCharacterMenu)
instance_create_depth(x,y,0,pauseCharacter)
instance_create_depth(x,y,0,pauseOption1)
instance_create_depth(x,y,0,pauseOption2)
instance_create_depth(x,y,0,pauseOption3)