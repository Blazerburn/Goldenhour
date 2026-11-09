event_inherited(); //so it will inherit from par_speaker

update_layer()

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

puzzleProgress      = 0;
choice_variable		= -1;	//the variable we change depending on the player's choice in dialogue

if image_index = 0 or image_index = 2 or image_index = 4 {
	collision = instance_create_layer(x-12, y+14, "Collisions", TestWall)
	with collision {
		image_xscale *= .37
		image_yscale *= .15
	}
}