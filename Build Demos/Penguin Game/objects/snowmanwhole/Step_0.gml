if global.paused = -1 and global.cameraActive = 1{
	if active = 1{
		y = y + global.eGravity
		if place_meeting(x,y+global.eGravity,Ground){
			y = y - global.eGravity
			maxHeight = y - 150
			jumpState = 1
		}
		range = abs(x - Player.x)
		image_xscale = direct * .35
		if abs(Player.x - x) < 50{
			image_xscale = .35
		}
		if x > Player.x{
			direct = 1
		}
		else{
			direct = -1
		}
		if place_meeting(x,y,snowmanHead) and allowAmmends = 1{
			friend = 1
		}
		if friend = 1{
			allowAmmends = 0
			sprite_index = snowmanidle
			if range < 500{
				x = x - (direct * 5)
				if place_meeting(x-(direct * 5),y,Ground){
					x = x + (direct * 5)
				}
			}
			if place_meeting(x,y,DippSword) or place_meeting(x,y,gumShoot) or place_meeting(x,y,Dynamite){
				friend = 0
				instance_create_depth(x,y,depth,snowmanHead)
				if place_meeting(x,y,DippSword) and (keyboard_check(ord("S")) or keyboard_check(vk_down)){
					global.pBounce = 30
				}
			}
		}	
		if jumpState = 1{
			y = y - global.eGravity * 2
			if y < maxHeight{
				jumpState = 0
			}
		}
		if friend  =0{
			sprite_index = snowmanthrow
			toss = toss + 1
			if toss > 40{
				instance_create_depth(x,y,depth,snowmanSnowball)
				allowAmmends = 1
				toss = 0
			}
			if (place_meeting(x,y,DippSword) or place_meeting(x,y,gumShoot) or place_meeting(x,y,Dynamite))and allowAmmends = 1{
				active = 0
				maxHeight = y + 1000
				if place_meeting(x,y,DippSword) and (keyboard_check(ord("S")) or keyboard_check(vk_down)){
					global.pBounce = 30
				}
			}
		}
	}
	if active = 0{
		y = y + global.eGravity
		image_angle = image_angle + 10
		if y > maxHeight{
			instance_destroy()
		}
	}
}