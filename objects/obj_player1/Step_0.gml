//movimentos atualizados do personagen

velocidade_horizontal = 0;
velocidade_vertical = 0;

//Checar as teclas e comandos 

if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
	velocidade_horizontal = velocidade;
	dir = "right";
}

if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
	velocidade_horizontal = -velocidade;
	dir = "left";
}

if(keyboard_check(vk_up) || keyboard_check(ord("W"))){
	velocidade_vertical = -velocidade ;
	dir = "up";
}

if(keyboard_check(vk_down) || keyboard_check(ord("S"))){
	velocidade_vertical = velocidade;
	dir = "down";
}

//ver se o personagem esta parado 

if(velocidade_horizontal != 0 || velocidade_vertical !=0){
	estado = "walk";
	tempo_parado = 0;
}else{
	estado = "idle";
	tempo_parado++;
}

//Aplica movimento

x += velocidade_horizontal;
y += velocidade_vertical;


//personagem parado 

if(tempo_parado >= 3600){
	estado = "sleep";
}
