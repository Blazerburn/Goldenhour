/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B89D92C
/// @DnDArgument : "var" "global.inventoryOpen"
/// @DnDArgument : "value" "1"
if(global.inventoryOpen == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43EC238B
	/// @DnDParent : 3B89D92C
	/// @DnDArgument : "var" "global.Talking"
	if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 06BF4323
		/// @DnDParent : 43EC238B
		/// @DnDArgument : "var" "global.selectionOpen"
		if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 52DE9650
			/// @DnDInput : 2
			/// @DnDParent : 06BF4323
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "3"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "colPos"
			/// @DnDArgument : "var_1" "itemSelected"
			colPos += 1;
			itemSelected += 3;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0EB13996
			/// @DnDParent : 06BF4323
			/// @DnDArgument : "var" "colPos"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "2"
			if(colPos > 2){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 149EF18A
				/// @DnDInput : 2
				/// @DnDParent : 0EB13996
				/// @DnDArgument : "expr_1" "-9"
				/// @DnDArgument : "expr_relative_1" "1"
				/// @DnDArgument : "var" "colPos"
				/// @DnDArgument : "var_1" "itemSelected"
				colPos = 0;
				itemSelected += -9;}}}}