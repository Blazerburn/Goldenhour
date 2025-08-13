/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1FF6FB8F
/// @DnDArgument : "var" "_len"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "string_length"
/// @DnDArgument : "arg" "text[textCurrent]"
var _len = string_length(text[textCurrent]);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 471115DD
/// @DnDArgument : "var" "charCurrent"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "_len"
if(charCurrent < _len){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2FD4969A
	/// @DnDParent : 471115DD
	/// @DnDArgument : "expr" "_len"
	/// @DnDArgument : "var" "charCurrent"
	charCurrent = _len;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3B09737B
else{	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 3A47C2DF
	/// @DnDParent : 3B09737B
	/// @DnDArgument : "msg" ""Interacted""
	show_debug_message(string("Interacted"));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53C194C6
	/// @DnDParent : 3B09737B
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "textCurrent"
	textCurrent += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4815ED6D
	/// @DnDParent : 3B09737B
	/// @DnDArgument : "var" "textCurrent"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "textLast"
	if(textCurrent > textLast){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3CE66496
		/// @DnDParent : 4815ED6D
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2D5CE42A
		/// @DnDApplyTo : {HeadshotSprites}
		/// @DnDParent : 4815ED6D
		with(HeadshotSprites) instance_destroy();
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 1B34F358
		/// @DnDParent : 4815ED6D
		/// @DnDArgument : "msg" "global.recentlyInteracted"
		show_debug_message(string(global.recentlyInteracted));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5F84E5D9
		/// @DnDParent : 4815ED6D
		/// @DnDArgument : "var" "textEnding"
		/// @DnDArgument : "value" "1"
		if(textEnding == 1){	/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 05C0262D
			/// @DnDParent : 5F84E5D9
			/// @DnDArgument : "var" "global.Talking"
			global.Talking = 0;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65DB75A9
		/// @DnDParent : 4815ED6D
		/// @DnDArgument : "var" "decisionsTrue"
		/// @DnDArgument : "value" "1"
		if(decisionsTrue == 1){	/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 40916C6E
			/// @DnDParent : 65DB75A9
			/// @DnDArgument : "value" ".25 * room_speed"
			/// @DnDArgument : "var" "global.recentlyInteracted"
			global.recentlyInteracted = .25 * room_speed;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 345EF3AE
			/// @DnDParent : 65DB75A9
			/// @DnDArgument : "objectid" "decisions"
			instance_create_layer(0, 0, "Instances", decisions);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 58AC4D05
		/// @DnDParent : 4815ED6D
		else{	/// @DnDAction : YoYo Games.Instances.Change_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7DBF2824
			/// @DnDApplyTo : {TestInteractableTrue}
			/// @DnDParent : 58AC4D05
			/// @DnDArgument : "objind" "TestInteractable"
			/// @DnDSaveInfo : "objind" "TestInteractable"
			with(TestInteractableTrue) instance_change(TestInteractable, true);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 48EBA219
			/// @DnDParent : 58AC4D05
			/// @DnDArgument : "var" "global.Immobilize"
			global.Immobilize = 0;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 69FD8894
			/// @DnDParent : 58AC4D05
			/// @DnDArgument : "value" ".25 * room_speed"
			/// @DnDArgument : "var" "global.recentlyInteracted"
			global.recentlyInteracted = .25 * room_speed;}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2B8787E7
	/// @DnDParent : 3B09737B
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 48EA1329
		/// @DnDParent : 2B8787E7
		/// @DnDArgument : "var" "textCurrent"
		/// @DnDArgument : "value" "headshotTexts[textCurrent]"
		if(textCurrent == headshotTexts[textCurrent]){	/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 66A9323F
			/// @DnDInput : 2
			/// @DnDParent : 48EA1329
			/// @DnDArgument : "var" "text[textCurrent]"
			/// @DnDArgument : "function" "stringWrap"
			/// @DnDArgument : "arg" "text[textCurrent]"
			/// @DnDArgument : "arg_1" "headshotTextWidth"
			text[textCurrent] = stringWrap(text[textCurrent], headshotTextWidth);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3BC273D1
			/// @DnDParent : 48EA1329
			/// @DnDArgument : "var" "charCurrent"
			charCurrent = 0;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5A75573A
		/// @DnDParent : 2B8787E7
		else{	/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 4769D176
			/// @DnDInput : 2
			/// @DnDParent : 5A75573A
			/// @DnDArgument : "var" "text[textCurrent]"
			/// @DnDArgument : "function" "stringWrap"
			/// @DnDArgument : "arg" "text[textCurrent]"
			/// @DnDArgument : "arg_1" "textWidth"
			text[textCurrent] = stringWrap(text[textCurrent], textWidth);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5A07D35C
			/// @DnDParent : 5A75573A
			/// @DnDArgument : "var" "charCurrent"
			charCurrent = 0;}}}