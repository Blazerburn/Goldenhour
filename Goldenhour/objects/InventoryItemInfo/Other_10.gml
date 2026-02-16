/// @description Insert description here
// You can write your code in this editor



show_debug_message(itemSelectedType);

	
if (itemSelectedType = "Strange Gel") {
	
	create_textevent(
     [ 
	"A strange golden gel",
	"It seems to be glowing slightly in your hand",
	"You might be able to stick this onto some things", 
	"Or maybe even stick things together"
    ],
    -1,                                                          //mySpeakers
    -1,   //myEffects
    -1,                                                                                            //myTextSpeed
    -1,                                                                   //myTypes
    -1,                                                            //myNextLine
    -1,                                                                                            //myScripts
    -1,                                                                                            //myTextCol
    -1,                                                                   //myEmotion
    -1                                                                                             //myEmote
    );
	
	
	instance_destroy();
}
else
{
	show_debug_message("No info item");
	
	create_textevent(
    [ 
	"No info"
    ],
    -1                                                          //mySpeakers                                                                                          //myEmote
    );
	
	instance_destroy();
}
