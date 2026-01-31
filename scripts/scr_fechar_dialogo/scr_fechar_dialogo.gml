function fechar_dialogo() {

    global.movimento_travado = false;

    var p = instance_find(obj_player1, 0);
    if (p != noone) {
        p.movimento_travado = false;
        p.image_xscale = 1;
        p.image_yscale = 1;
    }

    instance_destroy();
}
