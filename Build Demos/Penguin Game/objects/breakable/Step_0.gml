if place_meeting(x,y,playerCutscene) and global.cameraActive = 0{
	instance_destroy()
}

if place_meeting(x,y-(global.eGravity*2),Icile){
	instance_destroy()	
}
if place_meeting(x+30,y,Dynamite) or place_meeting(x-30,y,Dynamite) or place_meeting(x,y+30,Dynamite) or place_meeting(x,y-30,Dynamite){
	instance_destroy()	
}