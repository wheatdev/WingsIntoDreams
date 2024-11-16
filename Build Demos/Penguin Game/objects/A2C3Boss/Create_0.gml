audio_stop_all()
audio_play_sound(DonnerShipBossMusic1,0,true)
window_set_caption("ENGAGING: HOSTILE INTRUDING PENGUIN.")
instance_create_depth(x,y,0,A2C3BossCanon)
active = 0
xPos = x
aHealth = 30
allowHit = 0
gravDirec = 3
timer = 0
startY = y
timerCap = irandom_range(30,100)