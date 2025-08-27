/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D5F5AEB
/// @DnDArgument : "var" "textSelected"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "textMax"
if(textSelected < textMax){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A40D61E
	/// @DnDParent : 6D5F5AEB
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "textLimitBottom"
	if(textSelected > textLimitBottom){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20F554BB
		/// @DnDParent : 0A40D61E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "textLimitBottom"
		textLimitBottom += 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63CF5B1F
		/// @DnDParent : 0A40D61E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "textLimitTop"
		textLimitTop += 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 09373F78
		/// @DnDParent : 0A40D61E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "textPastLimitBottom"
		textPastLimitBottom += 1;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 1FD08D51
		/// @DnDInput : 2
		/// @DnDParent : 0A40D61E
		/// @DnDArgument : "msg" "textLimitTop"
		/// @DnDArgument : "msg_1" "textLimitBottom"
		show_debug_message(string(textLimitTop) + @"
		" + string(textLimitBottom));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0E581978
		/// @DnDParent : 0A40D61E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "textSelected"
		textSelected += 1;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 72DAE241
	/// @DnDParent : 6D5F5AEB
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25AE6220
		/// @DnDParent : 72DAE241
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "textSelected"
		textSelected += 1;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 62330848
		/// @DnDParent : 72DAE241
		/// @DnDArgument : "msg" "textSelected"
		show_debug_message(string(textSelected));}}