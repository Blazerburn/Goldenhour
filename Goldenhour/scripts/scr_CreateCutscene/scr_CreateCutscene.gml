function scr_CreateCutscene(){
var arg_count = argument_count;
	var i = 0, var arg; repeat(arg_count){
		arg[i] = argument[i];
		i++;
	}

	var cutscene = instance_create_layer(0,0,"Cutscene",obj_CutsceneController);

	with(cutscene){
	
		/*switch(arg_count-1){
			case 10: myHeadshot	= arg[10];
			case 9: myEmote		= arg[9];
			case 8: myEmotion	= arg[8];
			case 7: myTextCol	= arg[7];
			case 6: myScripts	= arg[6];
			case 5: myNextLine	= arg[5];
			case 4: myTypes		= arg[4];
			case 3: myTextSpeed	= arg[3];
			case 2: myEffects	= arg[2];
		}
		mySpeaker	= arg[1];*/
		scene		= arg[0];
	
		event_perform(ev_other, ev_user0);
	}







}