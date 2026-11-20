event_inherited(); //so it will inherit from par_speaker

//update_layer()

puzzleProgress = 0;


//-------DIALOGUE STUFF

myPortrait			= -1;
myVoice				= snd_voice1;
myFont				= fnt_dialogue;
myName				= "None";

myPortraitTalk		= -1;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= -1;


//-------OTHER

choice_variable		= -1;	//the variable we change depending on the player's choice in dialogue

twinkle = instance_create_layer(x-14, y-14, "Instances", obj_twinkle)

box = instance_create_layer(x, y-10, "Instances", obj_NetBox)
//instance_deactivate_object(obj_NetBox)

collision = 0;

collision = instance_create_layer(x - 12, y-4, "Instances", TestWall);
with(collision) {
image_xscale = .375;
image_yscale = .2;
}

