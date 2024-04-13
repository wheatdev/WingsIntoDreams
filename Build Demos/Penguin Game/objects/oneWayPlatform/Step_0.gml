if global.cameraActive = 1{
	if Player.y < (y-64){
		sprite_index = test5
	}
	else{
		sprite_index = noCollision
	}
	if place_meeting(x,y,Player){
		Player.y = Player.y - global.eGravity
	}
}