event_inherited(); //so it will inherit from par_speaker

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

collision = 0;
pushCollision = 0;

collision = instance_create_layer(x + 8, y - 16, "Collisions", TestWall);
with(collision) {
image_xscale = .5;
image_yscale = .5;
}
pushCollision = instance_create_layer(x + 8, y - 16, "Collisions", PushableWall);
with(pushCollision) {
image_xscale = .5;
image_yscale = .5;
}