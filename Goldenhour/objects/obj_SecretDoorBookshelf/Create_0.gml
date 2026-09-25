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

animation = 0;
playedSound = 0;

if global.libraryDoorOpen = 0 { 
collision = instance_create_layer(x-16, y+80, "Collisions", TestAngleWall)
collision.image_angle = 90
}
else if global.libraryDoorOpen = 1 {
	show_debug_message("Falling")
	sprite_index = spr_FallingBookshelf
	global.animating = 1;
}
else if global.libraryDoorOpen = 2 {
	sprite_index = spr_FallenBookshelf
}