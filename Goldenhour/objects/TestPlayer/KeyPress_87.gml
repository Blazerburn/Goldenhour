/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75AA11B7
/// @DnDArgument : "var" "global.inventoryOpen"
/// @DnDArgument : "value" "1"
if(global.inventoryOpen == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EA55F4D
	/// @DnDParent : 75AA11B7
	/// @DnDArgument : "var" "global.Talking"
	if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13B156D7
		/// @DnDParent : 2EA55F4D
		/// @DnDArgument : "var" "global.selectionOpen"
		if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5DEC7E14
			/// @DnDInput : 2
			/// @DnDParent : 13B156D7
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "-3"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "colPos"
			/// @DnDArgument : "var_1" "itemSelected"
			colPos += -1;
			itemSelected += -3;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 092DEC59
			/// @DnDParent : 13B156D7
			/// @DnDArgument : "var" "colPos"
			/// @DnDArgument : "op" "1"
			if(colPos < 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 65F59DB6
				/// @DnDInput : 2
				/// @DnDParent : 092DEC59
				/// @DnDArgument : "expr" "2"
				/// @DnDArgument : "expr_1" "9"
				/// @DnDArgument : "expr_relative_1" "1"
				/// @DnDArgument : "var" "colPos"
				/// @DnDArgument : "var_1" "itemSelected"
				colPos = 2;
				itemSelected += 9;}}}}