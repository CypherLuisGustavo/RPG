/// TRAVA TOTAL DURANTE DIÁLOGO
if (global.movimento_travado) {
    velocidade_horizontal = 0;
    velocidade_vertical = 0;
    image_index = 0;
    estado = "idle";
    exit;
}

/// RESET
velocidade_horizontal = 0;
velocidade_vertical = 0;

/// INPUT
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    velocidade_horizontal = velocidade;
    dir = "right";
}

if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    velocidade_horizontal = -velocidade;
    dir = "left";
}

if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
    velocidade_vertical = -velocidade;
    dir = "up";
}

if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
    velocidade_vertical = velocidade;
    dir = "down";
}

/// ESTADO
if (velocidade_horizontal != 0 || velocidade_vertical != 0) {
    estado = "walk";
    tempo_parado = 0;
} else {
    estado = "idle";
    tempo_parado++;
}

/// MOVIMENTO
// trava geral (diálogo, cutscene etc)
if (global.movimento_travado) exit;

// movimento horizontal (pixel a pixel)
var sx = sign(velocidade_horizontal);
for (var i = 0; i < abs(velocidade_horizontal); i++) {
    if (!place_meeting(x + sx, y, obj_colisor)) {
        x += sx;
    } else {
        break;
    }
}

// movimento vertical (pixel a pixel)
var sy = sign(velocidade_vertical);
for (var i = 0; i < abs(velocidade_vertical); i++) {
    if (!place_meeting(x, y + sy, obj_colisor)) {
        y += sy;
    } else {
        break;
    }
}


/// SONO
if (tempo_parado >= 3600) {
    estado = "sleep";
}
