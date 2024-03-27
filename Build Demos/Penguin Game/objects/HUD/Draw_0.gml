if global.paused = -1 and global.cameraActive = 1 and hide = -1{
	draw_sprite(HUDbase,0,x,y,)
	if global.playAs = 1{
		draw_sprite(HUDDippIcon,0,x,y)
		if global.dippHealth > 0{
			draw_text(x-50,y-50,string(global.dippHealth))
		}
		else{
			draw_text(x-50,y-50,"0")
		}
	}
	draw_text(x+100,y-50,string(global.theMoney))
}