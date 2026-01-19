/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 33471361
/// @DnDArgument : "y" "700"
/// @DnDArgument : "xscale" "15.6"
/// @DnDArgument : "yscale" "4"
/// @DnDArgument : "sprite" "TextBox"
/// @DnDSaveInfo : "sprite" "TextBox"
draw_sprite_ext(TextBox, 0, 0, 700, 15.6, 4, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 03B65CA0
/// @DnDArgument : "font" "NormalFont"
/// @DnDSaveInfo : "font" "NormalFont"
draw_set_font(NormalFont);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0BBF4AAF
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 23AC3729
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49C966C4
/// @DnDArgument : "var" "headshotTexts[textCurrent]"
/// @DnDArgument : "value" "1"
if(headshotTexts[textCurrent] == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 67485870
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "objectid" "HeadshotSprites"
	/// @DnDArgument : "layer" ""Instances_1""
	/// @DnDSaveInfo : "objectid" "HeadshotSprites"
	instance_create_layer(0, 0, "Instances_1", HeadshotSprites);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 027948BA
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "1"
	if(headshotHead[textCurrent] == 1){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 2C04F453
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 027948BA
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 573DA823
			/// @DnDParent : 2C04F453
			/// @DnDArgument : "expr" "CondiHeadshotNormal"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotNormal;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5143DE90
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "2"
	if(headshotHead[textCurrent] == 2){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 3B0AEF55
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 5143DE90
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3CAC88F8
			/// @DnDParent : 3B0AEF55
			/// @DnDArgument : "expr" "CondiHeadshotMildlyAnnoyed"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotMildlyAnnoyed;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B40E0C5
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "3"
	if(headshotHead[textCurrent] == 3){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 7DFAF6B1
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 2B40E0C5
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 61234A55
			/// @DnDParent : 7DFAF6B1
			/// @DnDArgument : "expr" "CondiHeadshotCrying"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotCrying;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 311A237E
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "4"
	if(headshotHead[textCurrent] == 4){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 33A7ED76
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 311A237E
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 54EA0C69
			/// @DnDParent : 33A7ED76
			/// @DnDArgument : "expr" "CondiHeadshotExcited"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotExcited;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1505C2C8
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "5"
	if(headshotHead[textCurrent] == 5){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 08F9703A
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 1505C2C8
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 777CD4DB
			/// @DnDParent : 08F9703A
			/// @DnDArgument : "expr" "CondiHeadshotHappy"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotHappy;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13BF8119
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "6"
	if(headshotHead[textCurrent] == 6){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 1C83665E
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 13BF8119
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A8D9184
			/// @DnDParent : 1C83665E
			/// @DnDArgument : "expr" "CondiHeadshotLaughing"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotLaughing;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B602521
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "7"
	if(headshotHead[textCurrent] == 7){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 158B218A
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 2B602521
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 66C6CF92
			/// @DnDParent : 158B218A
			/// @DnDArgument : "expr" "CondiHeadshotSad"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotSad;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19908CFE
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "8"
	if(headshotHead[textCurrent] == 8){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 19E31CFC
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 19908CFE
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 69F64CD9
			/// @DnDParent : 19E31CFC
			/// @DnDArgument : "expr" "CondiHeadshotStare"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotStare;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26A4B6EC
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "9"
	if(headshotHead[textCurrent] == 9){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 10A41E50
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 26A4B6EC
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1ABCE0EA
			/// @DnDParent : 10A41E50
			/// @DnDArgument : "expr" "CondiHeadshotThinking"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = CondiHeadshotThinking;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6FFC04C0
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "101"
	if(headshotHead[textCurrent] == 101){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 32D72CE1
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 6FFC04C0
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 07A9BB99
			/// @DnDParent : 32D72CE1
			/// @DnDArgument : "expr" "JamboHeadshotSmile"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = JamboHeadshotSmile;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04FE1EA8
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "102"
	if(headshotHead[textCurrent] == 102){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 0882A3A9
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 04FE1EA8
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 281F5EEF
			/// @DnDParent : 0882A3A9
			/// @DnDArgument : "expr" "JamboHeadshotDIsturbed"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = JamboHeadshotDIsturbed;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F553506
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "103"
	if(headshotHead[textCurrent] == 103){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 2E8D91B2
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 7F553506
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2D4A8771
			/// @DnDParent : 2E8D91B2
			/// @DnDArgument : "expr" "JamboHeadshotMouthOpen"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = JamboHeadshotMouthOpen;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B351647
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "104"
	if(headshotHead[textCurrent] == 104){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 1E5D9050
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 3B351647
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 22118841
			/// @DnDParent : 1E5D9050
			/// @DnDArgument : "expr" "JamboHeadshotSlightlyOpen"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = JamboHeadshotSlightlyOpen;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6961D416
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "105"
	if(headshotHead[textCurrent] == 105){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 58144BE3
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 6961D416
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7F537755
			/// @DnDParent : 58144BE3
			/// @DnDArgument : "expr" "JamboHeadshotSurprised"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = JamboHeadshotSurprised;
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30E9168B
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "106"
	if(headshotHead[textCurrent] == 106){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 5D09BD59
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 30E9168B
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 029C1362
			/// @DnDParent : 5D09BD59
			/// @DnDArgument : "expr" "JamboHeadshotUnhappy"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = JamboHeadshotUnhappy;
		}}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 26426F70
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "_len"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "string_length"
	/// @DnDArgument : "arg" "text[textCurrent]"
	var _len = string_length(text[textCurrent]);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05F7D390
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "charCurrent"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "_len"
	if(charCurrent < _len){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 46CFE233
		/// @DnDParent : 05F7D390
		/// @DnDArgument : "expr" "charSpeed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "charCurrent"
		charCurrent += charSpeed;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 587F7B4B
		/// @DnDParent : 05F7D390
		/// @DnDArgument : "soundid" "typing_sound_01_229863__1___1_"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "typing_sound_01_229863__1___1_"
		var l587F7B4B_0 = typing_sound_01_229863__1___1_;if (!audio_is_playing(l587F7B4B_0)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 787431BF
			/// @DnDParent : 587F7B4B
			/// @DnDArgument : "soundid" "typing_sound_01_229863__1___1_"
			/// @DnDArgument : "gain" ".7"
			/// @DnDArgument : "pitch" ".7"
			/// @DnDSaveInfo : "soundid" "typing_sound_01_229863__1___1_"
			audio_play_sound(typing_sound_01_229863__1___1_, 0, 0, .7, undefined, .7);}}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7F89A57C
	/// @DnDInput : 3
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "_str"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "string_copy"
	/// @DnDArgument : "arg" "text[textCurrent]"
	/// @DnDArgument : "arg_1" "1"
	/// @DnDArgument : "arg_2" "charCurrent"
	var _str = string_copy(text[textCurrent], 1, charCurrent);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 399B49F9
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "expr" "string_char_at(_str,floor(charCurrent))"
	/// @DnDArgument : "var" "currentCharacter"
	currentCharacter = string_char_at(_str,floor(charCurrent));

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 47A7A3D3
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "msg" "currentCharacter"
	show_debug_message(string(currentCharacter));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 093FF1C9
	/// @DnDParent : 49C966C4
	/// @DnDArgument : "var" "textShaking[textCurrent]"
	if(textShaking[textCurrent] == 0){	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 139CA748
		/// @DnDParent : 093FF1C9
		/// @DnDArgument : "x" "headshotTextX"
		/// @DnDArgument : "y" "textY"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "text" "_str"
		draw_text_transformed(headshotTextX, textY, "" + string(_str), 1, 1, 0);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 44CF04F7
	/// @DnDParent : 49C966C4
	else{	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 5C2FAD33
		/// @DnDParent : 44CF04F7
		/// @DnDArgument : "x" "headshotTextX"
		/// @DnDArgument : "y" "textY + textVariance"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "text" "_str"
		draw_text_transformed(headshotTextX, textY + textVariance, "" + string(_str), 1, 1, 0);}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 291AB7FC
else{	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 49D1E5F9
	/// @DnDApplyTo : {HeadshotSprites}
	/// @DnDParent : 291AB7FC
	with(HeadshotSprites) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0265F1D3
	/// @DnDParent : 291AB7FC
	/// @DnDArgument : "var" "_len"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "string_length"
	/// @DnDArgument : "arg" "text[textCurrent]"
	var _len = string_length(text[textCurrent]);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61588A69
	/// @DnDParent : 291AB7FC
	/// @DnDArgument : "var" "charCurrent"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "_len"
	if(charCurrent < _len){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C4E9C8C
		/// @DnDParent : 61588A69
		/// @DnDArgument : "expr" "charSpeed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "charCurrent"
		charCurrent += charSpeed;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 7A0856C8
		/// @DnDParent : 61588A69
		/// @DnDArgument : "soundid" "typing_sound_01_229863__1___1_"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "typing_sound_01_229863__1___1_"
		var l7A0856C8_0 = typing_sound_01_229863__1___1_;if (!audio_is_playing(l7A0856C8_0)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 6A7B96B0
			/// @DnDParent : 7A0856C8
			/// @DnDArgument : "soundid" "typing_sound_01_229863__1___1_"
			/// @DnDArgument : "gain" ".7"
			/// @DnDArgument : "pitch" ".7"
			/// @DnDSaveInfo : "soundid" "typing_sound_01_229863__1___1_"
			audio_play_sound(typing_sound_01_229863__1___1_, 0, 0, .7, undefined, .7);}}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6FA2BDD7
	/// @DnDInput : 3
	/// @DnDParent : 291AB7FC
	/// @DnDArgument : "var" "_str"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "string_copy"
	/// @DnDArgument : "arg" "text[textCurrent]"
	/// @DnDArgument : "arg_1" "1"
	/// @DnDArgument : "arg_2" "charCurrent"
	var _str = string_copy(text[textCurrent], 1, charCurrent);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44BFA045
	/// @DnDParent : 291AB7FC
	/// @DnDArgument : "expr" "string_char_at(_str,floor(charCurrent))"
	/// @DnDArgument : "var" "currentCharacter"
	currentCharacter = string_char_at(_str,floor(charCurrent));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A4EA9C0
	/// @DnDParent : 291AB7FC
	/// @DnDArgument : "var" "textShaking"
	if(textShaking == 0){	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 609ADF96
		/// @DnDParent : 2A4EA9C0
		/// @DnDArgument : "x" "textX"
		/// @DnDArgument : "y" "textY"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "text" "_str"
		draw_text_transformed(textX, textY, "" + string(_str), 1, 1, 0);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5FD5C180
	/// @DnDParent : 291AB7FC
	else{	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 3F0B9BC3
		/// @DnDParent : 5FD5C180
		/// @DnDArgument : "x" "textX"
		/// @DnDArgument : "y" "textY + textVariance"
		/// @DnDArgument : "caption" ""
		/// @DnDArgument : "text" "_str"
		draw_text_transformed(textX, textY + textVariance, "" + string(_str), 1, 1, 0);}}