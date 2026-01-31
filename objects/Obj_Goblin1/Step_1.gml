/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// Inteligência Artificial do globlin

if (instance_exists(obj_player1)) {
    

    var dist = point_distance(x, y, obj_player1.x, obj_player1.y);


    if (dist <= distancia_ataque) {
        

        var dir = point_direction(x, y, obj_player1.x, obj_player1.y);
        

        hspeed = lengthdir_x(velocidade, dir);
        vspeed = lengthdir_y(velocidade, dir);
        

        if (hspeed != 0) {
            image_xscale = sign(hspeed); 
        }
        
    } else {

        hspeed = 0;
        vspeed = 0;
    }


    if (dist <= distancia_dano) {

        instance_destroy(obj_player1);
    }
}