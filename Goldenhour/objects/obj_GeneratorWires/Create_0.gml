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
choice_variable		= global.shiningCityPowered;	//the variable we change depending on the player's choice in dialogue
detection_radius = 14;

if global.shiningCityPowered = 1 {
	if image_index = 0 {
		sprite_index = spr_WireAPower }
	if image_index = 1 {
		sprite_index = spr_WireBPower }
	if image_index = 2 {
		sprite_index = spr_WireCPower }
	if image_index = 3 {
		sprite_index = spr_WireCornerAPower }
	if image_index = 4 {
		sprite_index = spr_WireSideAPower }	
	if image_index = 5 {
		sprite_index = spr_WireSideBPower }
	if image_index = 6 {
		sprite_index = spr_WireCornerBPower }
}