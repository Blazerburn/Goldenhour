/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07DE9D53
/// @DnDArgument : "var" "global.inventoryOpen"
/// @DnDArgument : "value" "1"
if(global.inventoryOpen == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 300AB015
	/// @DnDParent : 07DE9D53
	/// @DnDArgument : "var" "global.Talking"
	if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1EDB615F
		/// @DnDParent : 300AB015
		/// @DnDArgument : "var" "global.selectionOpen"
		if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4B3FA462
			/// @DnDInput : 2
			/// @DnDParent : 1EDB615F
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "rowPos"
			/// @DnDArgument : "var_1" "itemSelected"
			rowPos += 1;
			itemSelected += 1;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 63F002BB
			/// @DnDParent : 1EDB615F
			/// @DnDArgument : "var" "rowPos"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "2"
			if(rowPos > 2){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6C347BA7
				/// @DnDInput : 2
				/// @DnDParent : 63F002BB
				/// @DnDArgument : "expr_1" "-3"
				/// @DnDArgument : "expr_relative_1" "1"
				/// @DnDArgument : "var" "rowPos"
				/// @DnDArgument : "var_1" "itemSelected"
				rowPos = 0;
				itemSelected += -3;}}}}