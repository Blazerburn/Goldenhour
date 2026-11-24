global.cutscene = true;
global.Immobilize = 1;

var _interact = keyboard_check_pressed(global.interactKey)

if (_interact && global.recentlyInteracted = 0 && global.menuOpen = false && global.Talking = false) {
	fadeOut = true;
	show_debug_message("IS NEXT SCENE AUTO? : " + string(auto[nextScene] + string(nextScene)))
	if auto[nextScene] = false {
		global.recentlyInteracted = 15;
	}
	else if auto[nextScene] = true {
		global.recentlyInteracted = 60;
	}
}

if auto != -1 {
	if auto[currentScene] = true && global.recentlyInteracted = 0 && global.menuOpen = false {
		fadeOut = true;
		global.recentlyInteracted = 60;
	}
}

if fadeOut = true {
	alpha = max(alpha - 0.05, 0);
    if (alpha <= 0) {
if currentScene = num {
			global.cutscene = false;
			global.Immobilize = 0;
			instance_destroy(obj_CutsceneController) }
		else {
			currentScene = nextScene
			if nextScene != num {
				nextScene += 1;
			}
			alpha = 1;
			fadeOut = false;
			if dialogue != 0 {
				if dialogue[currentScene] != -1 {
					show_debug_message("Create Dialogue: " + string(dialogue[currentScene]))
					cutscene_dialogue(dialogue[currentScene])
				}
			}
		}
    }
}