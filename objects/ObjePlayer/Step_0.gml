if  keyboard_check(vk_up){
	y -= velocidade
	
}	
if keyboard_check(vk_down){
	y +=velocidade
}

if keyboard_check(vk_left){
	x-=velocidade
	if image_xscale > 0{
	    image_xscale *= -1
	}
}

if keyboard_check(vk_right){
	x+=velocidade
	if image_xscale < 0{
		image_xscale *=-1
	}
}

if keyboard_check(vk_anykey){
	//sprite_index = sprPlayerCorrendo
}
else{
	sprite_index = SprPlayer{
}
	