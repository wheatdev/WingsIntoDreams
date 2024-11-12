depth = 5
bHealth = 10
allowHit = 0
createTreasure = 0
runAwayX = 0
runAwayY = 0
removeSpecial = 0
if global.storyProgress < 2{
	global.talking = 1
	state = 0
}
else{
	state = 1
}
image_yscale = .2
image_xscale = .2