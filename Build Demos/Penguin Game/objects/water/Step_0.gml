if active = 0{
	y = y - .1
}
else{
	y = y + .1
}
if y < startY - 20{
	active = 1
}
if y = startY{
	active = 0
}