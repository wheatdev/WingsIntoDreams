if audio_is_playing(worldMapMusic){
	
}
else{
	audio_stop_all()
	audio_play_sound(worldMapMusic,0,true)
}
window_set_caption("Grim Prospects")

global.key = 0
global.key1 = 0
global.key2 = 0
global.key3 = 0
global.key4 = 0
global.mechanism = 0
global.itemGet = 0 

global.dippHealth = global.dippHealthMax
global.gumHealth = global.gumHealthMax
global.earnestHealth = global.earnestHealthMax

instance_create_depth(global.playerStartX,global.playerStartY,0,dippScarf)
instance_create_depth(global.playerStartX,global.playerStartY,0,Dipp)