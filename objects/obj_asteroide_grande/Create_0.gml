/// @description Movimentação

/*o comando randomize() garante que os valores
	em cada teste do jogo sejam aleatórios, ou
	seja, que não se repiitam em cada teste.
	
*/
randomize();

rotation = 0;
speed = random_range(1.0, 2.2);
direction = irandom_range(0, 360);
