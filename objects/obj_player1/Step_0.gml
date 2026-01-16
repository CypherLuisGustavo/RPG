/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//inputs do usuario 
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
//aplicando os inputs do usuario -- velocidade |horizontal e vertical |:
velocidade_vertical = (down - up) * velocidade;

velocidade_horizontal = (right - left) * velocidade;



