/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21072EDE
/// @DnDArgument : "var" "global.inventoryOpen"
/// @DnDArgument : "value" "1"
if(global.inventoryOpen == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1EBD547C
	/// @DnDParent : 21072EDE
	/// @DnDArgument : "var" "global.Talking"
	if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A90D0D6
		/// @DnDParent : 1EBD547C
		/// @DnDArgument : "var" "global.selectionOpen"
		if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1721741D
			/// @DnDInput : 2
			/// @DnDParent : 2A90D0D6
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "-1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "rowPos"
			/// @DnDArgument : "var_1" "itemSelected"
			rowPos += -1;
			itemSelected += -1;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 174006AD
			/// @DnDParent : 2A90D0D6
			/// @DnDArgument : "var" "rowPos"
			/// @DnDArgument : "op" "1"
			if(rowPos < 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 72321409
				/// @DnDInput : 2
				/// @DnDParent : 174006AD
				/// @DnDArgument : "expr" "2"
				/// @DnDArgument : "expr_1" "3"
				/// @DnDArgument : "expr_relative_1" "1"
				/// @DnDArgument : "var" "rowPos"
				/// @DnDArgument : "var_1" "itemSelected"
				rowPos = 2;
				itemSelected += 3;}}}}