/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A0EA290
/// @DnDArgument : "var" "global.inventoryOpen"
/// @DnDArgument : "value" "1"
if(global.inventoryOpen == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42B4ACBC
	/// @DnDParent : 4A0EA290
	/// @DnDArgument : "var" "global.Talking"
	if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 643A3F22
		/// @DnDParent : 42B4ACBC
		/// @DnDArgument : "var" "global.selectionOpen"
		if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 728A43E6
			/// @DnDInput : 2
			/// @DnDParent : 643A3F22
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
			/// @DnDHash : 373F35CA
			/// @DnDParent : 643A3F22
			/// @DnDArgument : "var" "rowPos"
			/// @DnDArgument : "op" "1"
			if(rowPos < 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3616CEF6
				/// @DnDInput : 2
				/// @DnDParent : 373F35CA
				/// @DnDArgument : "expr" "2"
				/// @DnDArgument : "expr_1" "3"
				/// @DnDArgument : "expr_relative_1" "1"
				/// @DnDArgument : "var" "rowPos"
				/// @DnDArgument : "var_1" "itemSelected"
				rowPos = 2;
				itemSelected += 3;}}}}