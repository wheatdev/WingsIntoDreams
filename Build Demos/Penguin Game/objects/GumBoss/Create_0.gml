audio_stop_all()
audio_play_sound(bossSuspenseMusic,0,true)
window_set_caption("ELIMINATING: HOSTILE PENGUIN")
global.bossHelp2 = -1
instance_create_depth(x,y,-1,GumBossArm)
active = 0
xPos = x
gHealth = 40
allowHit = 0
image_xscale = -.25
image_yscale = .25
type = 0
xBarrierL = x - 1154
xBarrierR = x
attack = irandom_range(0,9)
if global.storyProgress = 9{
	type = 1
}
maxHeight = y
timer = 0
jumpState = 0 