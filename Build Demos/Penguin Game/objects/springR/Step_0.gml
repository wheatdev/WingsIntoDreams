if global.paused = -1{
	if active = 1{
		if direct = 1{
			y = y + global.eGravity
			if place_meeting(x,y+global.eGravity,Ground){
				maxHeight = y - 350
				direct = 2
			}
		}
		if direct = 2{
			y = y - global.eGravity
			if y < maxHeight or place_meeting(x,y+global.eGravity,Ground){
				direct = 1
			}
		}
		if place_meeting(x,y,Dipp){
			if place_meeting(x+64,y,Ground){
				bouncetoX = x
			}
			else{
				bouncePlayer = 1
				bouncetoX = x + 150
			}
		}
		if bouncePlayer = 1{
			if global.playAs = 1{
				Dipp.x = Dipp.x + 10
				if Dipp.x > bouncetoX{
					bouncePlayer = 0
				}
			}
		}
		if place_meeting(x,y,DippSword) or place_meeting(x,y-global.eGravity,crusher){
			active = 0
			maxHeight = y + 1000
		}
		if place_meeting(x+5,y,Ground){
			instance_create_depth(x-20,y,0,springL)
			instance_destroy()
		}
		x = x + 5
	}
	if active = 0{
		y = y + global.eGravity
		if y > maxHeight{
			instance_destroy()
		}
	}
	image_angle = image_angle - 5
}