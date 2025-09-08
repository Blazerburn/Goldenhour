/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 264737A1
/// @DnDArgument : "var" "inventoryOpen"
/// @DnDArgument : "value" "1"
if(inventoryOpen == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 510050D9
	/// @DnDParent : 264737A1
	/// @DnDArgument : "var" "global.Talking"
	if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20053E42
		/// @DnDParent : 510050D9
		/// @DnDArgument : "var" "global.selectionOpen"
		if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4263AAD8
			/// @DnDInput : 2
			/// @DnDParent : 20053E42
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
			/// @DnDHash : 09906ADF
			/// @DnDParent : 20053E42
			/// @DnDArgument : "var" "rowPos"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "2"
			if(rowPos > 2){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6FF4F869
				/// @DnDInput : 2
				/// @DnDParent : 09906ADF
				/// @DnDArgument : "expr_1" "-3"
				/// @DnDArgument : "expr_relative_1" "1"
				/// @DnDArgument : "var" "rowPos"
				/// @DnDArgument : "var_1" "itemSelected"
				rowPos = 0;
				itemSelected += -3;}}}}