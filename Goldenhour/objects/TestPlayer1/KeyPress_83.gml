/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BD9BC68
/// @DnDArgument : "var" "global.inventoryOpen"
/// @DnDArgument : "value" "1"
if(global.inventoryOpen == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D9AF4C0
	/// @DnDParent : 3BD9BC68
	/// @DnDArgument : "var" "global.Talking"
	if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 01545F86
		/// @DnDParent : 5D9AF4C0
		/// @DnDArgument : "var" "global.selectionOpen"
		if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0505237E
			/// @DnDInput : 2
			/// @DnDParent : 01545F86
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
			/// @DnDHash : 78AAD7C4
			/// @DnDParent : 01545F86
			/// @DnDArgument : "var" "colPos"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "2"
			if(colPos > 2){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 19F957D1
				/// @DnDInput : 2
				/// @DnDParent : 78AAD7C4
				/// @DnDArgument : "expr_1" "-9"
				/// @DnDArgument : "expr_relative_1" "1"
				/// @DnDArgument : "var" "colPos"
				/// @DnDArgument : "var_1" "itemSelected"
				colPos = 0;
				itemSelected += -9;}}}}