depth = 3

global.cameraActive = 1

dippState = 0
coyoteTime = 0
jumpState = 0
maxHeight = y
swordUse = 0
timer = 0
inWater = 0
onLadder = 0
direct = 0

if place_meeting(x,y,ladder){
	onLadder = 1	
}