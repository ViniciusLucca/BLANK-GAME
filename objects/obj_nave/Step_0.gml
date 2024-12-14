/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//movimento vertical
if (keyboard_check(vk_up) || keyboard_check(ord("W"))){
	speed = 3.4;	
} else
if (keyboard_check(vk_down) || keyboard_check(ord("S"))){
	speed = -3.4;	
} else{
	speed = 0;
	sprite_index = spr_nave_parada;
}

//movimento lateral (inclina o player para a esquerda ou direita)
if (keyboard_check(vk_right) || keyboard_check(ord("D"))){
	direction -= 3;	
}else 
if keyboard_check(vk_left) || keyboard_check(ord("A")){
	direction += 3;	
}
if (speed != 0){
	sprite_index = spr_nave_movendo;	
}
image_angle = direction;

/*Quando a nave atinge a borda da tela, aparece do outro lado na 
horizontal, vertical, a partir de 0px depois da hitbox
(move_wrap(horizontal, vertical, px depois da hitbox);
*/
move_wrap(true, true, 0);

if (keyboard_check_pressed(vk_space)) || (keyboard_check_pressed(ord("E"))){
	var _inst = instance_create_layer(x, y, "Instances", obj_projetil);	
	_inst.speed = 0.5;
	_inst.direction = direction;
	_inst.image_angle = direction;
}