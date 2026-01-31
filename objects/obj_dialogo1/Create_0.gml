/// SPRITE DA CAIXA
spr_caixa = spr_caixa_de_texto;

/// POSIÇÃO (inicializada para evitar erro)
var p = instance_find(obj_player1, 0);

if (p != noone) {
    x_box = p.x - sprite_get_width(spr_caixa) / 2;
    y_box = p.bbox_bottom + 12;
} else {
    x_box = 0;
    y_box = 0;
}


/// NOME DO NPC
nome_npc = "Desconhecido";

/// TEXTO E OPÇÕES
texto_npc = "";
opcoes = [];
proximo_estado = [];
opcao_selecionada = 0;

/// MARGENS
margem_nome_x = 30;
marge_nome_y = 12;

margem_texto_x = 30;
margem_texto_y = 38;
margem_opcao_y = 65;

/// ESTADO
estado_dialogo = 0;
npc = noone;
scr_dialogo_estado(npc, estado_dialogo);

/// TRAVA O PLAYER
global.movimento_travado = true;

var _p = instance_find(obj_player1, 0);
if (_p != noone) {
    _p.movimento_travado = true;
    _p.image_xscale = 0.9;
    _p.image_yscale = 0.9;
}
