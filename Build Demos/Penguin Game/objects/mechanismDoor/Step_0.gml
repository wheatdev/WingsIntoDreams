if global.paused = -1{
	if global.mechanism > 0{
		y = y - 5
		if y < startY - 250{
			y = y + 5
		}
	}
	else{
		y = y + 5
		if y > startY{
			y = y - 5
		}
	}
}