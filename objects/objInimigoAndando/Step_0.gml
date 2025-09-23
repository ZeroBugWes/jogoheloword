x += velocidadeHorizontal
y +=velocidadeVertical

if y <= 0 {
	velocidadeVertical = velocidade
}
if y>= room_height{
	velocidadeVertical = - velocidade
}

if x <= 0{
	velocidadeHorizontal = velocidade
}
if x >= room_width{

	velocidadeHorizontal = - velocidade
}

if velocidadeHorizontal < velocidadeMaxima and velocidadeHorizontal > -velocidadeMaxima{
	velocidadeHorizontal *= 1.005
}

if velocidadeVertical < velocidadeMaxima and velocidadeVertical > -velocidadeMaxima{
	velocidadeVertical *= 1.005
}

if velocidade < velocidadeMaxima and velocidade > -velocidadeMaxima{
	velocidade *= 1.005
}

if image_xscale < 0 and velocidadeHorizontal > 0{
	image_xscale *= -1
}

if image_xscale > 0 and velocidadeHorizontal < 0{
	image_xscale *= -1
	
}
/*
if place_meeting(x, y + velocidadeVertical, objInimigo) or place_meeting(x + velocidadeHorizontal * 1.9, y, objInimigoAndando){
	velocidadeHorizontal *= -1
}

if place_meeting(x, y + velocidadeVertical * 2, objInimigo) or place_meeting(x, y + velocidadeVertical * 2, objInimigoAndando){
	velocidadeVertical *= -1
}

*/
if place_meeting(x + 10, y, objInimigo){
	velocidadeHorizontal = -velocidade
}

if place_meeting(x + 10, y, objInimigoAndando){
	outraInstancia = instance_place(x + 10, y, objInimigoAndando)
	velocidadeHorizontal = -velocidade
	
	outraInstancia.velocidadeHorizontal = outraInstancia.velocidade
}

if place_meeting(x - 10, y, objInimigo){
	velocidadeHorizontal = velocidade
}
if place_meeting(x -10, y, objInimigoAndando){
	outraInstancia = instance_place(x - 10, y, objInimigoAndando)
	velocidadeHorizontal = velocidade
	
	outraInstancia.velocidadeHorizontal = - outraInstancia.velocidade
}

if place_meeting(x , y - 10, objInimigo){
velocidadeVertical = velocidade
}

if place_meeting(x , y - 10, objInimigoAndando){
	outraInstancia = instance_place(x , y - 10, objInimigoAndando)
	velocidadeVertical = velocidade
	outraInstancia.velocidadeVertical = -outraInstancia.velocidade
}

if place_meeting(x , y + 10, objInimigo){
	velocidadeVertical = -velocidade
}

if place_meeting(x , y + 10, objInimigoAndando){
	outraInstancia = instance_place(x , y + 10, objInimigoAndando)
	velocidadeVertical = -velocidade
	outraInstancia.velocidadeVertical = outraInstancia.velocidade
}

