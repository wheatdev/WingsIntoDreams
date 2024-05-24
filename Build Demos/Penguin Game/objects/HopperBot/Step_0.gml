if global.paused = -1{
	if global.cameraActive = 1{
		if bHealth > 0{
			image_xscale = direct/-4
			rangeX = abs(Player.x - x)
			if grounded = 1{
				if place_meeting(x,y+global.eGravity,Ground){
					x = x + (direct * 12)
				}
				else{
					grounded = 0
				}
				if agressive = 0{
					if place_meeting(x+(direct * 12),y,Ground){
						direct = direct * -1	
					}
					if place_empty(x+(direct * 100),y+global.eGravity,Ground){
						direct = direct * -1
					}
					if rangeX < 700{
						if Player.x < x and direct = -1{
							agressive = 1
						}
						if Player.x > x and direct = 1{
							agressive = 1
						}
					}
				}
				else{ 
					timer = timer + 1
					if timer > 30{
						timer = 0	
					}
					if Player.x > x{
						direct = 1
					}
					else{
						direct = -1
					}
					if place_meeting(x+(direct * 12),y,Ground){
						x = x - (direct * 12)	
					}
					if rangeX > 1000{
						agressive = 0	
					}
				}
			}
			else{
				y = y + global.eGravity
				if place_meeting(x,y+global.eGravity,Ground){
					grounded = 1	
				}
			}
		}
	}
}