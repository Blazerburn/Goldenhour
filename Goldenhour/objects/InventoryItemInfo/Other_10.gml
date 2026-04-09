/// @description Insert description here
// You can write your code in this editor



show_debug_message(itemSelectedType);

	
if (itemSelectedType = itemStrangeGel) {
	
	create_textevent(
     [ 
	"A sticky golden gel",
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
    [[9, c_yellow], [-1]],                                                                                            //myTextCol
    -1,                                                                   //myEmotion
    -1                                                                                             //myEmote
    );
	
	instance_destroy();
}

if (itemSelectedType = itemBrokenPlate) {
	
	create_textevent(
     [ 
	"A collection of broken pressure plate pieces from the box path",
	"It seems like you have all of the pieces"
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

if (itemSelectedType = itemFixedPlate) {
	
	create_textevent(
     [ 
	"The broken pieces of the pressure plate have been put together with the sticky gel",
	"It should be able to hold itself together now"
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

if (itemSelectedType = itemCrystallineHammer) {
	
	create_textevent(
     [ 
	"A hammer that has been carved out of a golden crystal",
	"The light around you refracts into a golden yellow as it passes through",
	"It's very beautiful",
	"You do get the impression that this was made to be looked at, not used",
	"But you might need a hammer, so hopefully it can be used"
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

if (itemSelectedType = itemBrokenGlassShard) {
	
	create_textevent(
     [ 
	"A broken piece of glass from the mosaic in that church",
	"As you might expect of broken glass, it's quite sharp",
	"It could probably be used to cut something"
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

if (itemSelectedType = itemChiselRock) {
	
	create_textevent(
     [ 
	"A rock that has been carved to a point",
	"In the past it might have been used for an arrow, or maybe even spear head",
	"But for now it'll serve for whatever you need"
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

if (itemSelectedType = itemBioluminescentRock) {
	
	create_textevent(
     [ 
	"The rock glows a bright blue in your hand",
	"A strong energy radiates from the rock",
	"You're not sure what this thing is exactly",
	"But whatever it is, it sure is powerful"
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

if (itemSelectedType = itemSecretBook10thHour) {
	
	global.textEventChoice = 1;
	
	create_textevent(
     [ 
	"A large thick book bound in a red leather",
	"The clock on the front is at the 10th hour",
	["Open the Book", "Leave it"],
	"You flip the book open",
	"On the inside cover, there is a yellow 2 painted",
	"But on the front page, there is nothing",
	"You flip the page, still nothing",
	"You turn more and more pages, nothing, nothing",
	"You close the book",
	"Something is wrong with this book",
    ],
    -1,                                                          //mySpeakers
    -1,   //myEffects
    -1,                                                                                            //myTextSpeed
    [0, 0, 1, 0, 0, 0, 0, 0, 0, 0],                                                                   //myTypes
    [0, 0, [3, -1], 0, 0, 0, 0, 0, 0, -1],                                                            //myNextLine
    -1,                                                                                            //myScripts
    [[-1], [-1], [-1], [-1], [39, c_yellow, 41, c_white], [-1], [-1], [-1], [-1], [-1]],                                                                                            //myTextCol
    -1,                                                                   //myEmotion
    -1                                                                                             //myEmote
    );
	
	instance_destroy();
}

if (itemSelectedType = itemLongStick) {
	
	create_textevent(
     [ 
	"A long stick",
	"You're not sure what they were using it for",
	"But it might be useful for you"
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

if (itemSelectedType = itemStickyStick) {
	
	create_textevent(
     [ 
	"You've covered the long stick in the sticky gel",
	"You might be able to stick something to it now"
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

if (itemSelectedType = itemMakeshiftAxe) {
	
	create_textevent(
     [ 
	"A makeshift axe that you have made",
	"It feels sturdy enough for you to break something"
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

	itemCombineSelect1 = 0;
	itemCombineSelect2 = 0;
	itemCombinePos1 = 0;
	itemCombinePos2 = 0;
	itemCombineType1 = 0;
	itemCombineType2 = 0;