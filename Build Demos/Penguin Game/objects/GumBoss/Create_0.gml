audio_stop_all()
audio_play_sound(bossSuspenseMusic,0,true)
window_set_caption("ENGAGING: HOSTILE INTRUDING PENGUIN.")
instance_create_depth(x,y,0,GumBossArm)
active = 0
xPos = x
aHealth = 40
allowHit = 0
image_xscale = -.25
image_yscale = .25
type = 0
if global.storyProgress = 9{
	type = 1
}