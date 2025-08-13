/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11214EB6
/// @DnDArgument : "var" "inventoryOpen"
if(inventoryOpen == 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F61FB7B
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "inventoryOpen"
	inventoryOpen = 1;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 477A8304
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.Immobilize"
	global.Immobilize = 1;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 11A6D78B
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "xpos" "101"
	/// @DnDArgument : "ypos" "101"
	/// @DnDArgument : "objectid" "InventorySelectObject"
	/// @DnDSaveInfo : "objectid" "InventorySelectObject"
	instance_create_layer(101, 101, "Instances", InventorySelectObject);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A8C1A0E
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "var" "inventorySpot[0]"
	if(inventorySpot[0] == 0){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 376F0725
		/// @DnDParent : 2A8C1A0E
		/// @DnDArgument : "msg" ""HI IT WORKED""
		show_debug_message(string("HI IT WORKED"));}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 238D6CB5
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "var" "global.testObject"
	/// @DnDArgument : "value" "1"
	if(global.testObject == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1BCF5391
		/// @DnDParent : 238D6CB5
		/// @DnDArgument : "xpos" "200 + 280 * 0 "
		/// @DnDArgument : "ypos" "190 + 301 * 0"
		/// @DnDArgument : "objectid" "InventoryTestObject"
		/// @DnDSaveInfo : "objectid" "InventoryTestObject"
		instance_create_layer(200 + 280 * 0 , 190 + 301 * 0, "Instances", InventoryTestObject);}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F460E28
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "var" "global.plantObject"
	/// @DnDArgument : "value" "1"
	if(global.plantObject == 1){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4C508210
		/// @DnDParent : 3F460E28
		/// @DnDArgument : "xpos" "200 + 280 * 1 "
		/// @DnDArgument : "ypos" "190 + 301 * 0"
		/// @DnDArgument : "objectid" "TestPlant_1"
		/// @DnDSaveInfo : "objectid" "TestPlant_1"
		instance_create_layer(200 + 280 * 1 , 190 + 301 * 0, "Instances", TestPlant_1);}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 184958AC
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "objectid" "InventoryItemNames"
	/// @DnDSaveInfo : "objectid" "InventoryItemNames"
	instance_create_layer(0, 0, "Instances", InventoryItemNames);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 274BD2F0
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "objectid" "InventoryTextBox_1"
	/// @DnDSaveInfo : "objectid" "InventoryTextBox_1"
	instance_create_layer(0, 0, "Instances", InventoryTextBox_1);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7297727D
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "objectid" "InventoryTextBox_2"
	/// @DnDSaveInfo : "objectid" "InventoryTextBox_2"
	instance_create_layer(0, 0, "Instances", InventoryTextBox_2);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7C836079
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "objectid" "TestInventory"
	/// @DnDSaveInfo : "objectid" "TestInventory"
	instance_create_layer(0, 0, "Instances", TestInventory);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4882CE86
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "objectid" "InventoryStarsObject1"
	/// @DnDSaveInfo : "objectid" "InventoryStarsObject1"
	instance_create_layer(0, 0, "Instances", InventoryStarsObject1);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 161F4082
	/// @DnDParent : 11214EB6
	/// @DnDArgument : "objectid" "InventoryInsideObject"
	/// @DnDSaveInfo : "objectid" "InventoryInsideObject"
	instance_create_layer(0, 0, "Instances", InventoryInsideObject);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 580293E8
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 010CDD0F
	/// @DnDParent : 580293E8
	/// @DnDArgument : "var" "global.combining"
	if(global.combining == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57A7F94D
		/// @DnDParent : 010CDD0F
		/// @DnDArgument : "var" "global.selectionOpen"
		if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74AD06B6
			/// @DnDParent : 57A7F94D
			/// @DnDArgument : "var" "global.infoOpen"
			if(global.infoOpen == 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0AAD5DDE
				/// @DnDParent : 74AD06B6
				/// @DnDArgument : "var" "inventoryOpen"
				inventoryOpen = 0;
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 728C614A
				/// @DnDParent : 74AD06B6
				/// @DnDArgument : "var" "global.Immobilize"
				global.Immobilize = 0;
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 407B2498
				/// @DnDApplyTo : {TestInventory}
				/// @DnDParent : 74AD06B6
				with(TestInventory) instance_destroy();
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 7AE0DFC2
				/// @DnDApplyTo : {InventoryInsideObject}
				/// @DnDParent : 74AD06B6
				with(InventoryInsideObject) instance_destroy();
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 6E96615A
				/// @DnDApplyTo : {InventoryStarsObject1}
				/// @DnDParent : 74AD06B6
				with(InventoryStarsObject1) instance_destroy();
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 35AD5903
				/// @DnDApplyTo : {InventorySelectObject}
				/// @DnDParent : 74AD06B6
				with(InventorySelectObject) instance_destroy();
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 785A33C7
				/// @DnDApplyTo : {InventoryTestObject}
				/// @DnDParent : 74AD06B6
				with(InventoryTestObject) instance_destroy();
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 57AE891B
				/// @DnDApplyTo : {TestPlant_1}
				/// @DnDParent : 74AD06B6
				with(TestPlant_1) instance_destroy();
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 6862BAA6
				/// @DnDApplyTo : {InventoryTextBox_1}
				/// @DnDParent : 74AD06B6
				with(InventoryTextBox_1) instance_destroy();
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 06E64C0A
				/// @DnDApplyTo : {InventoryTextBox_2}
				/// @DnDParent : 74AD06B6
				with(InventoryTextBox_2) instance_destroy();
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 79EEEBFD
				/// @DnDApplyTo : {InventoryItemNames}
				/// @DnDParent : 74AD06B6
				with(InventoryItemNames) instance_destroy();
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 26A220BF
				/// @DnDApplyTo : {TestCombinedObject}
				/// @DnDParent : 74AD06B6
				with(TestCombinedObject) instance_destroy();}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 4F19E64F
			/// @DnDParent : 57A7F94D
			else{	/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 02C439EE
				/// @DnDParent : 4F19E64F
				/// @DnDArgument : "var" "global.infoOpen"
				global.infoOpen = 0;
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5962C27D
				/// @DnDApplyTo : {InventoryItemInfo}
				/// @DnDParent : 4F19E64F
				with(InventoryItemInfo) instance_destroy();}}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 02B8DCA6
	/// @DnDParent : 580293E8
	else{	/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 350ED13B
		/// @DnDParent : 02B8DCA6
		/// @DnDArgument : "var" "global.combining"
		global.combining = 0;}}