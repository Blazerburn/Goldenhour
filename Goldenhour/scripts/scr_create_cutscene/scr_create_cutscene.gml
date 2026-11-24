function create_cutscene(_scene, _dialogue = [], _auto = []){
	var _cutscene = instance_create_layer(0,0,"Cutscene",obj_CutsceneController);
	show_debug_message(_dialogue)
	with(_cutscene){
		scene = _scene
		num = sprite_get_number(scene) - 1
		if _dialogue != -1 {
			dialogue = _dialogue
			if dialogue[0] != -1 {
				cutscene_dialogue(dialogue[0])
			}
		}
		if _auto != -1 {
			auto = _auto
		}
	}
}