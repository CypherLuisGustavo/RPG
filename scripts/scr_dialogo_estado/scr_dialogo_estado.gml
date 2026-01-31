
function scr_dialogo_estado(_npc,_estado){
estado_dialogo = _estado;

switch(_estado){
	case 0:
	nome_npc = "Desconhecido";
	texto_npc = "Você acordou ...";
	opcoes = ["Quem é você ?" , "Onde estou ? "];
	proximo_estado = [1,1];
	break;
	
	case 1:
    nome_npc = "Desconhecido";
    texto_npc = "Ainda não é hora de saber.";
    opcoes = ["..."];
    proximo_estado = [-1];
    break;
	
	}
}