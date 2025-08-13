/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D3D086E
/// @DnDArgument : "var" "textSelected"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "textMin"
if(textSelected > textMin){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 0023A1E6
	/// @DnDParent : 4D3D086E
	/// @DnDArgument : "key" "ord("W")"
	var l0023A1E6_0;l0023A1E6_0 = keyboard_check_pressed(ord("W"));if (l0023A1E6_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 371247F8
		/// @DnDParent : 0023A1E6
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "textSelected"
		textSelected += -1;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 69914813
		/// @DnDParent : 0023A1E6
		/// @DnDArgument : "msg" "textSelected"
		show_debug_message(string(textSelected));}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D1F69D6
/// @DnDArgument : "var" "textSelected"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "textMax"
if(textSelected < textMax){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A7AFBEF
	/// @DnDParent : 1D1F69D6
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "textLimitBottom"
	if(textSelected > textLimitBottom){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 060912A6
		/// @DnDParent : 7A7AFBEF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "textLimitBottom"
		textLimitBottom += 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55072ED9
		/// @DnDParent : 7A7AFBEF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "textLimitTop"
		textLimitTop += 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 09F41F3B
		/// @DnDParent : 7A7AFBEF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "textPastLimitBottom"
		textPastLimitBottom += 1;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 626DE661
		/// @DnDInput : 2
		/// @DnDParent : 7A7AFBEF
		/// @DnDArgument : "msg" "textLimitTop"
		/// @DnDArgument : "msg_1" "textLimitBottom"
		show_debug_message(string(textLimitTop) + @"
		" + string(textLimitBottom));
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 1D8A95DC
		/// @DnDParent : 7A7AFBEF
		/// @DnDArgument : "key" "ord("S")"
		var l1D8A95DC_0;l1D8A95DC_0 = keyboard_check_pressed(ord("S"));if (l1D8A95DC_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 666F0F4A
			/// @DnDParent : 1D8A95DC
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "textSelected"
			textSelected += 1;}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 06207FAB
	/// @DnDParent : 1D1F69D6
	else{	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 2EF24EE2
		/// @DnDParent : 06207FAB
		/// @DnDArgument : "key" "ord("S")"
		var l2EF24EE2_0;l2EF24EE2_0 = keyboard_check_pressed(ord("S"));if (l2EF24EE2_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 45C19F03
			/// @DnDParent : 2EF24EE2
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "textSelected"
			textSelected += 1;
		
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 33DCD36D
			/// @DnDParent : 2EF24EE2
			/// @DnDArgument : "msg" "textSelected"
			show_debug_message(string(textSelected));}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74C1E59C
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 384D017A
	/// @DnDParent : 74C1E59C
	/// @DnDArgument : "var" "textSelected"
	if(textSelected == 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 0B97FFE6
		/// @DnDParent : 384D017A
		var l0B97FFE6_0;l0B97FFE6_0 = keyboard_check_pressed(vk_space);if (l0B97FFE6_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7A53DBF6
			/// @DnDParent : 0B97FFE6
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 50BA33DB
			/// @DnDInput : 2
			/// @DnDParent : 0B97FFE6
			/// @DnDArgument : "value_1" "1"
			/// @DnDArgument : "var" "global.selectionOpen"
			/// @DnDArgument : "var_1" "global.combining"
			global.selectionOpen = 0;
			global.combining = 1;
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 39702A0F
			/// @DnDParent : 0B97FFE6
			exit;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BA26C90
	/// @DnDParent : 74C1E59C
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "value" "1"
	if(textSelected == 1){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 3150B853
		/// @DnDParent : 5BA26C90
		var l3150B853_0;l3150B853_0 = keyboard_check_pressed(vk_space);if (l3150B853_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2F97E949
			/// @DnDParent : 3150B853
			/// @DnDArgument : "objectid" "InventoryItemInfo"
			/// @DnDArgument : "layer" ""Instances_2""
			/// @DnDSaveInfo : "objectid" "InventoryItemInfo"
			instance_create_layer(0, 0, "Instances_2", InventoryItemInfo);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 4AC0C583
			/// @DnDParent : 3150B853
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "var" "global.infoOpen"
			global.infoOpen = 1;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 1195AE76
			/// @DnDParent : 3150B853
			/// @DnDArgument : "var" "global.selectionOpen"
			global.selectionOpen = 0;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4028720B
			/// @DnDParent : 3150B853
			/// @DnDArgument : "var" "itemSelected"
			/// @DnDArgument : "value" "1"
			if(itemSelected == 1){	/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 4C57BC2F
				/// @DnDApplyTo : {InventoryItemInfo}
				/// @DnDParent : 4028720B
				with(InventoryItemInfo) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0EF835D5
					/// @DnDInput : 3
					/// @DnDApplyTo : {InventoryItemInfo}
					/// @DnDParent : 4C57BC2F
					/// @DnDArgument : "expr" ""Ball""
					/// @DnDArgument : "expr_1" ""A small ball, it's red, for you color blind sheeple""
					/// @DnDArgument : "expr_2" "" ""
					/// @DnDArgument : "var" "itemName"
					/// @DnDArgument : "var_1" "itemDescriptionLine1"
					/// @DnDArgument : "var_2" "itemDescriptionLine2"
					with(InventoryItemInfo) {
					itemName = "Ball";
					itemDescriptionLine1 = "A small ball, it's red, for you color blind sheeple";
					itemDescriptionLine2 = " ";
					
					}
				}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75DCC1A6
			/// @DnDParent : 3150B853
			/// @DnDArgument : "var" "itemSelected"
			/// @DnDArgument : "value" "2"
			if(itemSelected == 2){	/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 79211C82
				/// @DnDApplyTo : {InventoryItemInfo}
				/// @DnDParent : 75DCC1A6
				with(InventoryItemInfo) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 13CD99F8
					/// @DnDInput : 3
					/// @DnDApplyTo : {InventoryItemInfo}
					/// @DnDParent : 79211C82
					/// @DnDArgument : "expr" ""Potted Plant""
					/// @DnDArgument : "expr_1" ""A strange plant in a little pot. I'm just typing this to""
					/// @DnDArgument : "expr_2" ""test if I need to fix length""
					/// @DnDArgument : "var" "itemName"
					/// @DnDArgument : "var_1" "itemDescriptionLine1"
					/// @DnDArgument : "var_2" "itemDescriptionLine2"
					with(InventoryItemInfo) {
					itemName = "Potted Plant";
					itemDescriptionLine1 = "A strange plant in a little pot. I'm just typing this to";
					itemDescriptionLine2 = "test if I need to fix length";
					
					}
				}}
		
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 6C0752AA
			/// @DnDParent : 3150B853
			/// @DnDArgument : "msg" "itemSelected"
			show_debug_message(string(itemSelected));
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 78678C26
			/// @DnDParent : 3150B853
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 57A4C32A
			/// @DnDParent : 3150B853
			exit;}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7338ADB8
	/// @DnDParent : 74C1E59C
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "value" "2"
	if(textSelected == 2){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 3DD0DC11
		/// @DnDParent : 7338ADB8
		var l3DD0DC11_0;l3DD0DC11_0 = keyboard_check_pressed(vk_space);if (l3DD0DC11_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 630D12C5
			/// @DnDParent : 3DD0DC11
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 246ED1E2
			/// @DnDParent : 3DD0DC11
			/// @DnDArgument : "var" "global.selectionOpen"
			global.selectionOpen = 0;
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 4F4BBD63
			/// @DnDParent : 3DD0DC11
			exit;}}}