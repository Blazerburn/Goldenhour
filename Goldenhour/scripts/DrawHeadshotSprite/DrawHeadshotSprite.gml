/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 495EC506
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "drawHeadshotSprite"
/// @DnDArgument : "arg" "oneHeadshotSprite=CondiHeadshotNormal"
/// @DnDArgument : "arg_1" "twoHeadshotSprite=CondiHeadshotMildlyAnnoyed"
/// @DnDArgument : "constructor" "1"
function drawHeadshotSprite(oneHeadshotSprite=CondiHeadshotNormal, twoHeadshotSprite=CondiHeadshotMildlyAnnoyed) constructor{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D333226
	/// @DnDParent : 495EC506
	/// @DnDArgument : "var" "headshotHead[textCurrent]"
	/// @DnDArgument : "value" "1"
	if(headshotHead[textCurrent] == 1){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 0BFCD605
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 1D333226
		with(HeadshotSprites) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5D8B70D1
			/// @DnDParent : 0BFCD605
			/// @DnDArgument : "expr" "oneHeadshotSprite"
			/// @DnDArgument : "var" "headshotSprite"
			headshotSprite = oneHeadshotSprite;
		}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7391F0A0
	/// @DnDParent : 495EC506
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0241FA3A
		/// @DnDParent : 7391F0A0
		/// @DnDArgument : "var" "headshotHead[textCurrent]"
		/// @DnDArgument : "value" "2"
		if(headshotHead[textCurrent] == 2){	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 1DFE8867
			/// @DnDApplyTo : {HeadshotSprites}
			/// @DnDParent : 0241FA3A
			with(HeadshotSprites) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 72B00ED1
				/// @DnDParent : 1DFE8867
				/// @DnDArgument : "expr" "twoHeadshotSprite"
				/// @DnDArgument : "var" "headshotSprite"
				headshotSprite = twoHeadshotSprite;
			}}}}