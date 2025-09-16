/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20E91D95
/// @DnDArgument : "var" "global.inventoryOpen"
/// @DnDArgument : "value" "1"
if(global.inventoryOpen == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EB7B856
	/// @DnDParent : 20E91D95
	/// @DnDArgument : "var" "global.Talking"
	if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3CCF4522
		/// @DnDParent : 6EB7B856
		/// @DnDArgument : "var" "global.selectionOpen"
		if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7653ABB7
			/// @DnDInput : 2
			/// @DnDParent : 3CCF4522
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
			/// @DnDHash : 2C71D64E
			/// @DnDParent : 3CCF4522
			/// @DnDArgument : "var" "colPos"
			/// @DnDArgument : "op" "1"
			if(colPos < 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2AA840D0
				/// @DnDInput : 2
				/// @DnDParent : 2C71D64E
				/// @DnDArgument : "expr" "2"
				/// @DnDArgument : "expr_1" "9"
				/// @DnDArgument : "expr_relative_1" "1"
				/// @DnDArgument : "var" "colPos"
				/// @DnDArgument : "var_1" "itemSelected"
				colPos = 2;
				itemSelected += 9;}}}}