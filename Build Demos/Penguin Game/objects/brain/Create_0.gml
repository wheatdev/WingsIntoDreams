if room = springFactory{
	view_camera[0] = camera_create_view(global.playerStartX - 800, global.playerStartY - 550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
}
if room = conicCaves{
	view_camera[0] = camera_create_view(global.playerStartX - 800, global.playerStartY - 550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
}
if room = mineDownUnder{
	view_camera[0] = camera_create_view(2600, 2500, 1600, 900, 0, Dipp, 5, 5, -1, -1)
}
if room = donnerShipInside{
	view_camera[0] = camera_create_view(global.playerStartX - 800, global.playerStartY - 550, 1600, 900, 0, Dipp, 5, 5, -1, -1)
}
if room = hopperHeliship{
	view_camera[0] = camera_create_view(global.playerStartX-800, 13880, 1600, 900, 0, Dipp, 5, 5, -1, -1)
}
instance_create_depth(x,y,0,brainTalk)