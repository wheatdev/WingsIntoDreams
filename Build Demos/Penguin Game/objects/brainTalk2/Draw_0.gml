if global.cameraActive = 1{
	draw_sprite(textbox,0,x-750,y-550)
	if icon = 0{
		draw_sprite(textboxiconDipp,0,x-750,y-550)
	}
	if icon = 1{
		draw_sprite(textboxiconWalter,0,x-750,y-550)
	}
	if icon = 2{
		draw_sprite(textboxiconSecurity,0,x-750,y-550)
	}
	if icon = 3{
		draw_sprite(textboxiconCaptain,0,x-750,y-550)
	}
	if icon = 4{
		draw_sprite(textboxiconGum,0,x-750,y-550)
	}
	if icon = 5{
		draw_sprite(textboxiconHopper,0,x-750,y-550)
	}
	if icon = 6{
		draw_sprite(textboxiconPrincess,0,x-750,y-550)
	}
	if icon = 7{
		draw_sprite(textboxiconDuke,0,x-750,y-550)
	}
	if icon = 8{
		draw_sprite(textboxiconGiant,0,x-750,y-550)
	}
	if icon = 9{
		draw_sprite(textboxiconJoint,0,x-750,y-550)
	}
	draw_text(x-300,y-450,words)
	draw_text(x-300,y-400,words2)
	draw_text(x-300,y-350,words3)
}