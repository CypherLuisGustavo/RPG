draw_self();

// idle
if (estado == "idle") {
    sprite_index = asset_get_index("spr_player1_idle_" + dir);
    image_speed = 0.1;
}

// walk
if (estado == "walk") {
    sprite_index = asset_get_index("spr_player1_walk_" + dir);
    image_speed = 0.2;
}

// sleep
if (estado == "sleep") {
    sprite_index = spr_player1_sleep;
    image_speed = 0.05;
}
