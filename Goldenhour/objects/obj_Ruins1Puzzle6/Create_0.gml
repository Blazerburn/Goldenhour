event_inherited(); //so it will inherit from par_speaker

puzzleProgress = 0;
createWall = 0;

//image_xscale = 2;
//image_yscale = 2;

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

collision = instance_create_layer(x-16 , y-24, "Instances", TestWall);

pathCollision = instance_create_layer(x-16, y-16, "Instances", PushableWall);


