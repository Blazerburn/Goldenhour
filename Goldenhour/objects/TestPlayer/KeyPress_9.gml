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
	global.Immobilize = 1;}

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
			/// @DnDHash : 3E256BDA
			/// @DnDParent : 57A7F94D
			/// @DnDArgument : "var" "global.Talking"
			if(global.Talking == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 74AD06B6
				/// @DnDParent : 3E256BDA
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
					global.Immobilize = 0;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 4F19E64F
				/// @DnDParent : 3E256BDA
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
		/// @DnDHash : 6C674170
		/// @DnDParent : 010CDD0F
		else{	/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 5E93D58E
			/// @DnDParent : 6C674170
			/// @DnDArgument : "var" "global.selectionOpen"
			global.selectionOpen = 0;
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2776D9AF
			/// @DnDApplyTo : {TestInventoryDecisions}
			/// @DnDParent : 6C674170
			with(TestInventoryDecisions) instance_destroy();}}

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