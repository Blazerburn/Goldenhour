/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 6F65AF32
/// @DnDArgument : "font" "NormalFont"
/// @DnDSaveInfo : "font" "NormalFont"
draw_set_font(NormalFont);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5F73F8F9
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2E6E3AE3
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 333F348D
/// @DnDArgument : "var" "headshotTexts[textCurrent]"
/// @DnDArgument : "value" "1"
if(headshotTexts[textCurrent] == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 091F1DF8
	/// @DnDParent : 333F348D
	/// @DnDArgument : "objectid" "HeadshotSprites"
	/// @DnDArgument : "layer" ""Instances_1""
	/// @DnDSaveInfo : "objectid" "HeadshotSprites"
	instance_create_layer(0, 0, "Instances_1", HeadshotSprites);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D68209D
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "1"
	if(headshotHead[textCurrent] == 1){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 6BE4B279
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 0D68209D
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 038155D1
			/// @DnDParent : 6BE4B279
			/// @DnDArgument : "expr" "CondiHeadshotNormal"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotNormal;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7CAF07F5
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "2"
	if(headshotHead[textCurrent] == 2){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 3B8BE2BE
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 7CAF07F5
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 43A3B2C8
			/// @DnDParent : 3B8BE2BE
			/// @DnDArgument : "expr" "CondiHeadshotMildlyAnnoyed"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotMildlyAnnoyed;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58A41B56
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "3"
	if(headshotHead[textCurrent] == 3){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 511CCC1C
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 58A41B56
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 03DA8554
			/// @DnDParent : 511CCC1C
			/// @DnDArgument : "expr" "CondiHeadshotCrying"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotCrying;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1AD2C209
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "4"
	if(headshotHead[textCurrent] == 4){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 1449D881
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 1AD2C209
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3AACF94F
			/// @DnDParent : 1449D881
			/// @DnDArgument : "expr" "CondiHeadshotExcited"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotExcited;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63A63B90
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "5"
	if(headshotHead[textCurrent] == 5){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 6E54FF26
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 63A63B90
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 016AEB96
			/// @DnDParent : 6E54FF26
			/// @DnDArgument : "expr" "CondiHeadshotHappy"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotHappy;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2CC859EA
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "6"
	if(headshotHead[textCurrent] == 6){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 2ADF8799
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 2CC859EA
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5C746FE7
			/// @DnDParent : 2ADF8799
			/// @DnDArgument : "expr" "CondiHeadshotLaughing"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotLaughing;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F67802E
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "7"
	if(headshotHead[textCurrent] == 7){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 3225514C
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 6F67802E
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 64898BAD
			/// @DnDParent : 3225514C
			/// @DnDArgument : "expr" "CondiHeadshotSad"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotSad;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E98783A
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "8"
	if(headshotHead[textCurrent] == 8){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 1622CFA3
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 6E98783A
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5DDDA0AB
			/// @DnDParent : 1622CFA3
			/// @DnDArgument : "expr" "CondiHeadshotStare"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotStare;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 660BA324
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "9"
	if(headshotHead[textCurrent] == 9){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 22572AE0
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 660BA324
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4E1FB897
			/// @DnDParent : 22572AE0
			/// @DnDArgument : "expr" "CondiHeadshotThinking"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotThinking;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54F91D4B
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "101"
	if(headshotHead[textCurrent] == 101){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 0F316C41
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 54F91D4B
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 65E8FF96
			/// @DnDParent : 0F316C41
			/// @DnDArgument : "expr" "JamboHeadshotSmile"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = JamboHeadshotSmile;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 141A7535
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "102"
	if(headshotHead[textCurrent] == 102){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 487F601B
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 141A7535
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A3C2BAE
			/// @DnDParent : 487F601B
			/// @DnDArgument : "expr" "JamboHeadshotDIsturbed"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = JamboHeadshotDIsturbed;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 641EE681
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "103"
	if(headshotHead[textCurrent] == 103){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 1D423B2D
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 641EE681
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 43DFF600
			/// @DnDParent : 1D423B2D
			/// @DnDArgument : "expr" "JamboHeadshotMouthOpen"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = JamboHeadshotMouthOpen;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A0513E3
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "104"
	if(headshotHead[textCurrent] == 104){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 6C7EEC4E
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 1A0513E3
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2404E454
			/// @DnDParent : 6C7EEC4E
			/// @DnDArgument : "expr" "JamboHeadshotSlightlyOpen"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = JamboHeadshotSlightlyOpen;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 22475F0B
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "105"
	if(headshotHead[textCurrent] == 105){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 0B3FA9FE
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 22475F0B
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 47168795
			/// @DnDParent : 0B3FA9FE
			/// @DnDArgument : "expr" "JamboHeadshotSurprised"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = JamboHeadshotSurprised;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02F27343
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "106"
	if(headshotHead[textCurrent] == 106){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 340AC949
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 02F27343
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1DAEF4AC
			/// @DnDParent : 340AC949
			/// @DnDArgument : "expr" "JamboHeadshotUnhappy"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = JamboHeadshotUnhappy;
		}}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3D0592DF
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "_len"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "string_length"
	/// @DnDArgument : "arg" "text[textCurrent]"
	var _len = string_length(text[textCurrent]);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 631B48E5
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "charCurrent"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "_len"
	if(charCurrent < _len){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2E605B0E
		/// @DnDParent : 631B48E5
		/// @DnDArgument : "expr" "charSpeed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "charCurrent"
		charCurrent += charSpeed;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 34605880
		/// @DnDParent : 631B48E5
		/// @DnDArgument : "soundid" "typing_sound_01_229863__1___1_"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "typing_sound_01_229863__1___1_"
		var l34605880_0 = typing_sound_01_229863__1___1_;if (!audio_is_playing(l34605880_0)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 5CE63F4B
			/// @DnDParent : 34605880
			/// @DnDArgument : "soundid" "typing_sound_01_229863__1___1_"
			/// @DnDArgument : "gain" ".7"
			/// @DnDArgument : "pitch" ".7"
			/// @DnDSaveInfo : "soundid" "typing_sound_01_229863__1___1_"
			audio_play_sound(typing_sound_01_229863__1___1_, 0, 0, .7, undefined, .7);}}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6238306E
	/// @DnDInput : 3
	/// @DnDParent : 333F348D
	/// @DnDArgument : "var" "_str"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "string_copy"
	/// @DnDArgument : "arg" "text[textCurrent]"
	/// @DnDArgument : "arg_1" "1"
	/// @DnDArgument : "arg_2" "charCurrent"
	var _str = string_copy(text[textCurrent], 1, charCurrent);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 017BA729
	/// @DnDParent : 333F348D
	/// @DnDArgument : "x" "headshotTextX"
	/// @DnDArgument : "y" "textY"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "_str"
	draw_text_transformed(headshotTextX, textY, "" + string(_str), 1, 1, 0);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6E07ECFA
else{	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2B1688AC
	/// @DnDApplyTo : {HeadshotSprites}
	/// @DnDParent : 6E07ECFA
	with(HeadshotSprites) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2228E51B
	/// @DnDParent : 6E07ECFA
	/// @DnDArgument : "var" "_len"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "string_length"
	/// @DnDArgument : "arg" "text[textCurrent]"
	var _len = string_length(text[textCurrent]);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31554490
	/// @DnDParent : 6E07ECFA
	/// @DnDArgument : "var" "charCurrent"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "_len"
	if(charCurrent < _len){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 54942A12
		/// @DnDParent : 31554490
		/// @DnDArgument : "expr" "charSpeed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "charCurrent"
		charCurrent += charSpeed;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 3E8300B8
		/// @DnDParent : 31554490
		/// @DnDArgument : "soundid" "typing_sound_01_229863__1___1_"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "typing_sound_01_229863__1___1_"
		var l3E8300B8_0 = typing_sound_01_229863__1___1_;if (!audio_is_playing(l3E8300B8_0)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 5C496235
			/// @DnDParent : 3E8300B8
			/// @DnDArgument : "soundid" "typing_sound_01_229863__1___1_"
			/// @DnDArgument : "gain" ".7"
			/// @DnDArgument : "pitch" ".7"
			/// @DnDSaveInfo : "soundid" "typing_sound_01_229863__1___1_"
			audio_play_sound(typing_sound_01_229863__1___1_, 0, 0, .7, undefined, .7);}}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5F6366D8
	/// @DnDInput : 3
	/// @DnDParent : 6E07ECFA
	/// @DnDArgument : "var" "_str"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "string_copy"
	/// @DnDArgument : "arg" "text[textCurrent]"
	/// @DnDArgument : "arg_1" "1"
	/// @DnDArgument : "arg_2" "charCurrent"
	var _str = string_copy(text[textCurrent], 1, charCurrent);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 363CA9CE
	/// @DnDParent : 6E07ECFA
	/// @DnDArgument : "x" "textX"
	/// @DnDArgument : "y" "textY"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "_str"
	draw_text_transformed(textX, textY, "" + string(_str), 1, 1, 0);}