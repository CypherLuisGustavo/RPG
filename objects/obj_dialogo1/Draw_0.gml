/// CONFIG PADRÃO

draw_set_font(fnt_dialogo);
draw_set_alpha(1);

/// SOMBRA DA CAIXA
draw_set_alpha(0.35);
draw_sprite(spr_caixa, 0, x_box + 4, y_box + 4);
draw_set_alpha(1);

/// CAIXA DE TEXTO
draw_sprite(spr_caixa, 0, x_box, y_box);

/// NOME DO NPC
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// sombra
draw_set_color(c_black);
draw_text(
    x_box + margem_nome_x + 1,
    y_box + marge_nome_y + 1,
    nome_npc
);

// texto
draw_set_color(c_white);
draw_text(
    x_box + margem_nome_x,
    y_box + marge_nome_y,
    nome_npc
);

/// TEXTO PRINCIPAL CENTRALIZADO
var xx = x_box + sprite_get_width(spr_caixa) / 2;
var yy = y_box + margem_texto_y;

draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// contorno
draw_set_color(c_black);
draw_text_ext(xx - 1, yy, texto_npc, 8, 300);
draw_text_ext(xx + 1, yy, texto_npc, 8, 300);
draw_text_ext(xx, yy - 1, texto_npc, 8, 300);
draw_text_ext(xx, yy + 1, texto_npc, 8, 300);

/// texto
draw_set_color(c_white);
draw_text_ext(xx, yy, texto_npc, 8, 300);

/// OPÇÕES
for (var i = 0; i < array_length(opcoes); i++) {

    if (i == opcao_selecionada)
        draw_set_color(c_black);
    else
        draw_set_color(c_black);

    draw_text(
        xx,
        y_box + margem_opcao_y + i * 18,
        opcoes[i]
    );
}

/// RESET

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1);
draw_set_color(c_white);
draw_set_alpha(1);
