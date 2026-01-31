/// INPUT DE OPÇÕES
if (keyboard_check_pressed(vk_down)) {
    opcao_selecionada++;
    if (opcao_selecionada >= array_length(opcoes))
        opcao_selecionada = 0;
}

if (keyboard_check_pressed(vk_up)) {
    opcao_selecionada--;
    if (opcao_selecionada < 0)
        opcao_selecionada = array_length(opcoes) - 1;
}

/// CONFIRMAR
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("E"))) {
    var prox = proximo_estado[opcao_selecionada];

    if (prox == -1) {
        /// DESTRAVA PLAYER
        global.movimento_travado = false;

        var _p = instance_find(obj_player1, 0);
        if (_p != noone) {
            _p.movimento_travado = false;
            _p.image_xscale = 1;
            _p.image_yscale = 1;
        }

        instance_destroy();
		exit;
    } else {
        opcao_selecionada = 0;
        scr_dialogo_estado(npc, prox);
    }
}
// FECHAR DIÁLOGO FORÇADO (ESC)
if (keyboard_check_pressed(vk_escape)) {
    fechar_dialogo();
    exit;
}


