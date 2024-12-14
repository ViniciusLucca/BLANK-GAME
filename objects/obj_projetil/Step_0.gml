/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//deleta a instancia do tiro quando atinge a borda da tela
if (y <= 0 || x <= 0){
	instance_destroy();	
} else if (y >= room_height || x >= room_width){
	instance_destroy();	
}
