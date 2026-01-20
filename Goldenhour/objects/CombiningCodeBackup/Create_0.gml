/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 454643EB
/// @DnDArgument : "var" "global.combining"
global.combining = 0;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 7CF3EF3B
/// @DnDApplyTo : {TestPlayer1}
with(TestPlayer1) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F2850B8
	/// @DnDInput : 2
	/// @DnDParent : 7CF3EF3B
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "itemArray[itemCombinePos1][itemAmount]"
	/// @DnDArgument : "var_1" "itemArray[itemCombinePos2][itemAmount]"
	itemArray[itemCombinePos1][itemAmount] += -1;
	itemArray[itemCombinePos2][itemAmount] += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A669E40
	/// @DnDParent : 7CF3EF3B
	/// @DnDArgument : "var" "itemArray[itemCombinePos1][itemAmount]"
	/// @DnDArgument : "op" "3"
	if(itemArray[itemCombinePos1][itemAmount] <= 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D3953BB
		/// @DnDParent : 4A669E40
		/// @DnDArgument : "expr" "itemNone"
		/// @DnDArgument : "var" "itemArray[itemCombinePos1][itemType]"
		itemArray[itemCombinePos1][itemType] = itemNone;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EAEA84D
	/// @DnDParent : 7CF3EF3B
	/// @DnDArgument : "var" "itemArray[itemCombinePos2][itemAmount]"
	/// @DnDArgument : "op" "3"
	if(itemArray[itemCombinePos2][itemAmount] <= 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7FF9811A
		/// @DnDParent : 5EAEA84D
		/// @DnDArgument : "expr" "itemNone"
		/// @DnDArgument : "var" "itemArray[itemCombinePos2][itemType]"
		itemArray[itemCombinePos2][itemType] = itemNone;}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19665577
	/// @DnDInput : 4
	/// @DnDParent : 7CF3EF3B
	/// @DnDArgument : "var" "_pos"
	/// @DnDArgument : "value" "0"
	/// @DnDArgument : "var_1" "_type"
	/// @DnDArgument : "value_1" "itemPlantBall"
	/// @DnDArgument : "var_2" "_sprite"
	/// @DnDArgument : "value_2" "CombinedInventory"
	/// @DnDArgument : "var_3" "_name"
	/// @DnDArgument : "value_3" ""Plant Ball""
	var _pos = 0;
	var _type = itemPlantBall;
	var _sprite = CombinedInventory;
	var _name = "Plant Ball";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5AB9CD12
	/// @DnDInput : 2
	/// @DnDParent : 7CF3EF3B
	/// @DnDArgument : "var" "itemCombineSelect1"
	/// @DnDArgument : "var_1" "itemCombineSelect2"
	itemCombineSelect1 = 0;
	itemCombineSelect2 = 0;

	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 202FF395
	/// @DnDParent : 7CF3EF3B
	/// @DnDArgument : "var" "_pos"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "9"
	while ((_pos < 9)) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50C0D79A
		/// @DnDParent : 202FF395
		/// @DnDArgument : "var" "itemArray[_pos][itemType]"
		/// @DnDArgument : "value" "_type"
		if(itemArray[_pos][itemType] == _type){	/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 24FC97F4
			/// @DnDParent : 50C0D79A
			break;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3A9AB672
		/// @DnDParent : 202FF395
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 39B5D3F5
			/// @DnDParent : 3A9AB672
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "_pos"
			_pos += 1;}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C58D233
	/// @DnDParent : 7CF3EF3B
	/// @DnDArgument : "var" "_pos"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "8"
	if(_pos > 8){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 75C146A1
		/// @DnDParent : 6C58D233
		/// @DnDArgument : "var" "_pos"
		_pos = 0;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 72EC6AC7
		/// @DnDParent : 6C58D233
		/// @DnDArgument : "var" "_pos"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "9"
		while ((_pos < 9)) {
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4B241F71
			/// @DnDParent : 72EC6AC7
			/// @DnDArgument : "var" "itemArray[_pos][itemType]"
			/// @DnDArgument : "value" "itemNone"
			if(itemArray[_pos][itemType] == itemNone){	/// @DnDAction : YoYo Games.Loops.Break
				/// @DnDVersion : 1
				/// @DnDHash : 45DD58B0
				/// @DnDParent : 4B241F71
				break;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1022EC7F
			/// @DnDParent : 72EC6AC7
			else{	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 240549DE
				/// @DnDParent : 1022EC7F
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "_pos"
				_pos += 1;}
		}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DCA4248
	/// @DnDParent : 7CF3EF3B
	/// @DnDArgument : "var" "_pos"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "9"
	if(_pos < 9){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 661EC250
		/// @DnDInput : 4
		/// @DnDParent : 3DCA4248
		/// @DnDArgument : "expr" "_type"
		/// @DnDArgument : "expr_1" "_sprite"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "expr_3" "_name"
		/// @DnDArgument : "var" "itemArray[_pos][itemType]"
		/// @DnDArgument : "var_1" "itemArray[_pos][itemSprite]"
		/// @DnDArgument : "var_2" "itemArray[_pos][itemAmount]"
		/// @DnDArgument : "var_3" "itemArray[_pos][itemName]"
		itemArray[_pos][itemType] = _type;
		itemArray[_pos][itemSprite] = _sprite;
		itemArray[_pos][itemAmount] += 1;
		itemArray[_pos][itemName] = _name;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 55E11BAE
		/// @DnDInput : 2
		/// @DnDParent : 3DCA4248
		/// @DnDArgument : "msg" ""Put item down""
		/// @DnDArgument : "msg_1" "_pos"
		show_debug_message(string("Put item down") + @"
		" + string(_pos));}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 026B490A
instance_destroy();