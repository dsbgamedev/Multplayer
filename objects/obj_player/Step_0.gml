/// @description Insert description here
// You can write your code in this editor

//Fazendo o layer andar para os lados
if(keyboard_check(vk_left))
{
	x -= 5;
}

if(keyboard_check(vk_right))
{
	x += 5;
}

//Atirando
if(keyboard_check_pressed(vk_space))
{
	//Criando o tiro
	var _tiro = instance_create_layer(x,y,layer,obj_tiro);
	//Avisando para o tiro que eu sou o pai dele
	_tiro.pai = id;
	//Dando uma velocidade para tiro
	//O tiro vai ir na direção que eu estou apontando
	_tiro.vspeed = image_yscale * -10;
}


