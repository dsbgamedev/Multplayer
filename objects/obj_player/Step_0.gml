/// @description Insert description here
// You can write your code in this editor

//Usando os inputs do multiplayer
var _controles = rollback_get_input();


//Fazendo o layer andar para os lados
if(_controles.left)
{
	x -= 5;
}

if(_controles.right)
{
	x += 5;
}

//Atirando
if(_controles.space_pressed)
{
	//Criando o tiro
	var _tiro = instance_create_layer(x,y,layer,obj_tiro);
	//Avisando para o tiro que eu sou o pai dele
	_tiro.pai = id;
	//Dando uma velocidade para tiro
	//O tiro vai ir na direção que eu estou apontando
	_tiro.vspeed = image_yscale * -10;
}

//Impedindo que o Player saia fora da tela
x = clamp(x,0 + sprite_width / 2, room_width - sprite_width/2);


