if  keyboard_check(vk_up) or keyboard_check(ord("W")){
	y -= velocidade
	
}	
if keyboard_check(vk_down) or keyboard_check(ord("S")){
	y +=velocidade
}

if keyboard_check(vk_left) or keyboard_check(ord("A")){
	x-=velocidade
	if image_xscale > 0{
	    image_xscale *= -1
	}
}

if keyboard_check(vk_right) or keyboard_check(ord("D")){
	x+=velocidade
	if image_xscale < 0{
		image_xscale *=-1
	}
}

if keyboard_check(vk_anykey){
	sprite_index = sprPlayerCorrendo
}
else{
	sprite_index = sprPlayer
}
	
if y <= 0{
	y += velocidade
}
if y >= room_height{
	y -=velocidade
}

if x <= 0{
	x +=velocidade
}
if x >= room_width{
	x -= velocidade
}

if global.pontos == 2 and room!= room_last{
	room_goto_next()
}

else if global.pontos == 5{
	room = room_first
}