/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F2888EF
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7752EAC6
	/// @DnDParent : 6F2888EF
	/// @DnDArgument : "var" "textSelected"
	if(textSelected == 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 47FBAF0C
		/// @DnDParent : 7752EAC6
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1B101BC6
		/// @DnDApplyTo : inst_392ACFBC
		/// @DnDParent : 7752EAC6
		with(inst_392ACFBC) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 34129EC2
		/// @DnDApplyTo : inst_2E344679
		/// @DnDParent : 7752EAC6
		with(inst_2E344679) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 139300FC
		/// @DnDInput : 4
		/// @DnDParent : 7752EAC6
		/// @DnDArgument : "var" "_pos"
		/// @DnDArgument : "value" "0"
		/// @DnDArgument : "var_1" "_type"
		/// @DnDArgument : "value_1" "ItemPlant"
		/// @DnDArgument : "var_2" "_sprite"
		/// @DnDArgument : "value_2" "SmallPlantInventory"
		/// @DnDArgument : "var_3" "_name"
		/// @DnDArgument : "value_3" ""Small Plant""
		var _pos = 0;
		var _type = ItemPlant;
		var _sprite = SmallPlantInventory;
		var _name = "Small Plant";
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 0245DF24
		/// @DnDApplyTo : {TestPlayer}
		/// @DnDParent : 7752EAC6
		with(TestPlayer) {
			/// @DnDAction : YoYo Games.Loops.While_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 362D45FB
			/// @DnDParent : 0245DF24
			/// @DnDArgument : "var" "_pos"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "9"
			while ((_pos < 9)) {
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 434D54E9
				/// @DnDParent : 362D45FB
				/// @DnDArgument : "var" "itemArray[_pos][itemType]"
				/// @DnDArgument : "value" "_type"
				if(itemArray[_pos][itemType] == _type){	/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 0905D9C1
					/// @DnDParent : 434D54E9
					break;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 738D2425
				/// @DnDParent : 362D45FB
				else{	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 542B329A
					/// @DnDParent : 738D2425
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "_pos"
					_pos += 1;}
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 01B64910
			/// @DnDParent : 0245DF24
			/// @DnDArgument : "var" "_pos"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "8"
			if(_pos > 8){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1FF7D8C9
				/// @DnDParent : 01B64910
				/// @DnDArgument : "var" "_pos"
				_pos = 0;
			
				/// @DnDAction : YoYo Games.Loops.While_Loop
				/// @DnDVersion : 1
				/// @DnDHash : 168133D8
				/// @DnDParent : 01B64910
				/// @DnDArgument : "var" "_pos"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "9"
				while ((_pos < 9)) {
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3F292533
					/// @DnDParent : 168133D8
					/// @DnDArgument : "var" "itemArray[_pos][itemType]"
					/// @DnDArgument : "value" "itemNone"
					if(itemArray[_pos][itemType] == itemNone){	/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 152CCAC3
						/// @DnDParent : 3F292533
						break;}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 1413B6D7
					/// @DnDParent : 168133D8
					else{	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 01328819
						/// @DnDParent : 1413B6D7
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "_pos"
						_pos += 1;}
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 59C54304
			/// @DnDParent : 0245DF24
			/// @DnDArgument : "var" "_pos"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "9"
			if(_pos < 9){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 76EA8C14
				/// @DnDInput : 4
				/// @DnDParent : 59C54304
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
				/// @DnDHash : 577E1367
				/// @DnDInput : 2
				/// @DnDParent : 59C54304
				/// @DnDArgument : "msg" ""Put item down""
				/// @DnDArgument : "msg_1" "_pos"
				show_debug_message(string("Put item down") + @"
				" + string(_pos));}
		}
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 041F3551
		/// @DnDParent : 7752EAC6
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "global.plantObject"
		global.plantObject = 1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0E9936AA
		/// @DnDInput : 2
		/// @DnDParent : 7752EAC6
		/// @DnDArgument : "var" "global.Immobilize"
		/// @DnDArgument : "var_1" "global.Talking"
		global.Immobilize = 0;
		global.Talking = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 60EFBF98
		/// @DnDParent : 7752EAC6
		/// @DnDArgument : "value" ".25 * room_speed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.recentlyInteracted"
		global.recentlyInteracted += .25 * room_speed;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 207B2CD2
		/// @DnDParent : 7752EAC6
		exit;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14DE6B94
	/// @DnDParent : 6F2888EF
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "value" "1"
	if(textSelected == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 24F9F64F
		/// @DnDParent : 14DE6B94
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0F27A45D
		/// @DnDInput : 2
		/// @DnDParent : 14DE6B94
		/// @DnDArgument : "var" "global.Immobilize"
		/// @DnDArgument : "var_1" "global.Talking"
		global.Immobilize = 0;
		global.Talking = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 7E5C43B9
		/// @DnDParent : 14DE6B94
		/// @DnDArgument : "value" ".25 * room_speed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.recentlyInteracted"
		global.recentlyInteracted += .25 * room_speed;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 3A928202
		/// @DnDParent : 14DE6B94
		exit;}}