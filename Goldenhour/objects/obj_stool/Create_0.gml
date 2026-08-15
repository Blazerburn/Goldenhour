event_inherited(); //so it will inherit from par_speaker

update_layer()


var _frame = image_index
var _stool = instance_create_layer(x, y+14, "Instances", obj_stoolInt)
with (_stool) {
	choice_variable = _frame
}

var _collision = instance_create_layer(x-6, y+24, "Collisions", TestWall)
with _collision {
	image_xscale = .2
	image_yscale = .1
}

//-------DIALOGUE STUFF

/*myPortrait			= -1;
myVoice				= snd_voice1;
myFont				= fnt_dialogue;
myName				= "None";

myPortraitTalk		= -1;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= -1;


//-------OTHER

puzzleProgress      = 0;
choice_variable		= image_index;	//the variable we change depending on the player's choice in dialogue

detection_radius = 21;

