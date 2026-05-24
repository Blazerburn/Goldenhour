goToRoom = InfiniteRoom;
playerSpawnpoint = 2;
playerDirection = 0;
fadeIn = false;
fadeOut = false;
alpha = 0;
spawnpoint = 0;

if !instance_exists(obj_FadeTransition) {
	instance_create_layer(x, y, "Instances", obj_FadeTransition)
}

event_inherited(); //so it will inherit from par_speaker


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
_frame              = 0;