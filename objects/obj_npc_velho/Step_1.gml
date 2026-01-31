if (global.movimento_travado) exit;

if (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_enter)) {

    if (distance_to_object(obj_player1) < 32) {

        if (!instance_exists(obj_dialogo1)) {

            var d = instance_create_layer(0, 0, "player", obj_dialogo1);
            d.npc = id;
            d.estado_dialogo = estado_inicial;
        }
    }
}
