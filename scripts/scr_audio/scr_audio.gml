
function scr_audio(){
global.musica_asset = noone;
global.musica_id = -1;

function tocar_musica(_snd) {

    // _snd = Asset.GMSound
    if (global.musica_asset != _snd) {

        if (global.musica_id != -1) {
            audio_stop(global.musica_id);
        }

        global.musica_asset = _snd;
        global.musica_id = audio_play_sound(_snd, 1, true);
        audio_sound_gain(global.musica_id, 0.5, 0);
    }
}

}