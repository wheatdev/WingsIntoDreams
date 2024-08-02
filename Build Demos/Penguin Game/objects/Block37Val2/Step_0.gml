if global.paused = -1{
	if place_empty(x,y+1,Ground){
		y = y +1	
	}
		if place_meeting(x-64,y,Block37Val0){
			valueL = 0
		}
		if place_meeting(x-64,y,Block37Val1){
			valueL = 1
		}
		if place_meeting(x-64,y,Block37Val2){
			valueL = 2
		}
		if place_meeting(x-64,y,Block37Val3){
			valueL = 3
		}
		if place_meeting(x-64,y,Block37Val4){
			valueL = 4
		}
		if place_meeting(x-64,y,Block37Val5){
			valueL = 5
		}
		if place_meeting(x-64,y,Block37Val6){
			valueL = 6
		}
		if place_meeting(x-64,y,Block37Val7){
			valueL = 7
		}
		if place_meeting(x+64,y,Block37Val0){
			valueR = 0
		}
		if place_meeting(x=64,y,Block37Val1){
			valueR = 1
		}
		if place_meeting(x+64,y,Block37Val2){
			valueR = 2
		}
		if place_meeting(x+64,y,Block37Val3){
			valueR = 3
		}
		if place_meeting(x+64,y,Block37Val4){
			valueR = 4
		}
		if place_meeting(x+64,y,Block37Val5){
			valueR = 5
		}
		if place_meeting(x+64,y,Block37Val6){
			valueR = 6
		}
		if place_meeting(x+64,y,Block37Val7){
			valueR = 7
		}
		if place_meeting(x,y-64,Block37Val0){
			valueU = 0
		}
		if place_meeting(x,y-64,Block37Val1){
			valueU = 1
		}
		if place_meeting(x,y-64,Block37Val2){
			valueU = 2
		}
		if place_meeting(x,y-64,Block37Val3){
			valueU = 3
		}
		if place_meeting(x,y-64,Block37Val4){
			valueU = 4
		}
		if place_meeting(x,y-64,Block37Val5){
			valueU = 5
		}
		if place_meeting(x,y-64,Block37Val6){
			valueU = 6
		}
		if place_meeting(x,y-64,Block37Val7){
			valueU = 7
		}
		if place_meeting(x,y+64,Block37Val0){
			valueD = 0
		}
		if place_meeting(x,y+64,Block37Val1){
			valueD = 1
		}
		if place_meeting(x,y+64,Block37Val2){
			valueD = 2
		}
		if place_meeting(x,y+64,Block37Val3){
			valueD = 3
		}
		if place_meeting(x,y+64,Block37Val4){
			valueD = 4
		}
		if place_meeting(x,y+64,Block37Val5){
			valueD = 5
		}
		if place_meeting(x,y+64,Block37Val6){
			valueD = 6
		}
		if place_meeting(x,y+64,Block37Val7){
			valueD = 7
		}
		valueCheckH = value + valueL + valueR
		valueCheckV = value + valueU + valueD
		if valueCheckH = 7{
			instance_create_depth(x,y,0,Block37DeleteH)
		}
		if valueCheckV = 7{
			instance_create_depth(x,y,0,Block37DeleteV)
		}
		if place_meeting(x,y,Block37DeleteH) or place_meeting(x,y,Block37DeleteV){
			instance_destroy()	
		}
}