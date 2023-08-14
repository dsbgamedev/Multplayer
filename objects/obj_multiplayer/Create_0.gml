/// @description Insert description here
// You can write your code in this editor

//Iniciando o multiplayer
//Definir quem é o player
rollback_define_player(obj_player);

//Começar o multiplayer
//Checando se ja conectaram no jogo
var _conectou = rollback_join_game();

//Ainda não conectou no jogo, quer dizer que posso criar o jogo
if(! _conectou)
{
	rollback_create_game(2,1);
}







