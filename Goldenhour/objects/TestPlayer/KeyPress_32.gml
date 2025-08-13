/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 506FBFB7
/// @DnDArgument : "var" "global.selectionOpen"
if(global.selectionOpen == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A9001CF
	/// @DnDParent : 506FBFB7
	/// @DnDArgument : "var" "global.infoOpen"
	if(global.infoOpen == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36458EF1
		/// @DnDParent : 3A9001CF
		/// @DnDArgument : "var" "inventoryOpen"
		/// @DnDArgument : "value" "1"
		if(inventoryOpen == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4E52657D
			/// @DnDParent : 36458EF1
			/// @DnDArgument : "var" "itemSelected"
			/// @DnDArgument : "value" "1"
			if(itemSelected == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1C4049C6
				/// @DnDParent : 4E52657D
				/// @DnDArgument : "var" "global.testObject"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "value" "1"
				if(!(global.testObject == 1)){	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 780E91C6
					/// @DnDParent : 1C4049C6
					/// @DnDArgument : "var" "global.combining"
					if(global.combining == 0){	/// @DnDAction : YoYo Games.Common.Set_Global
						/// @DnDVersion : 1
						/// @DnDHash : 797FE7BB
						/// @DnDParent : 780E91C6
						/// @DnDArgument : "value" "1"
						/// @DnDArgument : "var" "global.selectionOpen"
						global.selectionOpen = 1;
					
						/// @DnDAction : YoYo Games.Common.Set_Global
						/// @DnDVersion : 1
						/// @DnDHash : 094B48A3
						/// @DnDParent : 780E91C6
						/// @DnDArgument : "value" "20"
						/// @DnDArgument : "var" "global.recentlyInteracted"
						global.recentlyInteracted = 20;
					
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 2C6DB0F5
						/// @DnDParent : 780E91C6
						/// @DnDArgument : "xpos" "101"
						/// @DnDArgument : "ypos" "101"
						/// @DnDArgument : "objectid" "TestInventoryDecisions"
						/// @DnDArgument : "layer" ""Instances_2""
						/// @DnDSaveInfo : "objectid" "TestInventoryDecisions"
						instance_create_layer(101, 101, "Instances_2", TestInventoryDecisions);
					
						/// @DnDAction : YoYo Games.Common.Apply_To
						/// @DnDVersion : 1
						/// @DnDHash : 502873A4
						/// @DnDApplyTo : {TestInventoryDecisions}
						/// @DnDParent : 780E91C6
						with(TestInventoryDecisions) {
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 682606D6
							/// @DnDApplyTo : {TestInventoryDecisions}
							/// @DnDParent : 502873A4
							/// @DnDArgument : "expr" "1"
							/// @DnDArgument : "var" "itemSelected"
							with(TestInventoryDecisions) {
							itemSelected = 1;
							
							}
						}}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 3403A998
					/// @DnDParent : 1C4049C6
					else{	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 3CB19FA0
						/// @DnDParent : 3403A998
						/// @DnDArgument : "var" "itemSelected"
						/// @DnDArgument : "value" "1"
						if(itemSelected == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 31DC5580
							/// @DnDParent : 3CB19FA0
							/// @DnDArgument : "var" "global.testObject"
							/// @DnDArgument : "value" "1"
							if(global.testObject == 1){	/// @DnDAction : YoYo Games.Common.Set_Global
								/// @DnDVersion : 1
								/// @DnDHash : 1608DD5A
								/// @DnDParent : 31DC5580
								/// @DnDArgument : "var" "global.combining"
								global.combining = 0;
							
								/// @DnDAction : YoYo Games.Instances.Destroy_Instance
								/// @DnDVersion : 1
								/// @DnDHash : 425A9BEC
								/// @DnDApplyTo : {InventoryTestObject}
								/// @DnDParent : 31DC5580
								with(InventoryTestObject) instance_destroy();
							
								/// @DnDAction : YoYo Games.Instances.Destroy_Instance
								/// @DnDVersion : 1
								/// @DnDHash : 6AD5014E
								/// @DnDApplyTo : {TestPlant_1}
								/// @DnDParent : 31DC5580
								with(TestPlant_1) instance_destroy();
							
								/// @DnDAction : YoYo Games.Instances.Create_Instance
								/// @DnDVersion : 1
								/// @DnDHash : 725EBC3F
								/// @DnDParent : 31DC5580
								/// @DnDArgument : "xpos" "661"
								/// @DnDArgument : "ypos" "101"
								/// @DnDArgument : "objectid" "TestCombinedObject"
								/// @DnDArgument : "layer" ""Instances_2""
								/// @DnDSaveInfo : "objectid" "TestCombinedObject"
								instance_create_layer(661, 101, "Instances_2", TestCombinedObject);}}}}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 34BB3283
			/// @DnDParent : 36458EF1
			/// @DnDArgument : "var" "itemSelected"
			/// @DnDArgument : "value" "2"
			if(itemSelected == 2){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 782B737E
				/// @DnDParent : 34BB3283
				/// @DnDArgument : "var" "global.plantObject"
				/// @DnDArgument : "value" "1"
				if(global.plantObject == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 546508D4
					/// @DnDParent : 782B737E
					/// @DnDArgument : "var" "global.combining"
					if(global.combining == 0){	/// @DnDAction : YoYo Games.Common.Set_Global
						/// @DnDVersion : 1
						/// @DnDHash : 7383B277
						/// @DnDParent : 546508D4
						/// @DnDArgument : "value" "1"
						/// @DnDArgument : "var" "global.selectionOpen"
						global.selectionOpen = 1;
					
						/// @DnDAction : YoYo Games.Common.Set_Global
						/// @DnDVersion : 1
						/// @DnDHash : 2B2E0CB9
						/// @DnDParent : 546508D4
						/// @DnDArgument : "value" "20"
						/// @DnDArgument : "var" "global.recentlyInteracted"
						global.recentlyInteracted = 20;
					
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 30B4AE39
						/// @DnDParent : 546508D4
						/// @DnDArgument : "xpos" "381"
						/// @DnDArgument : "ypos" "101"
						/// @DnDArgument : "objectid" "TestInventoryDecisions"
						/// @DnDArgument : "layer" ""Instances_2""
						/// @DnDSaveInfo : "objectid" "TestInventoryDecisions"
						instance_create_layer(381, 101, "Instances_2", TestInventoryDecisions);
					
						/// @DnDAction : YoYo Games.Common.Apply_To
						/// @DnDVersion : 1
						/// @DnDHash : 65667CE2
						/// @DnDApplyTo : {TestInventoryDecisions}
						/// @DnDParent : 546508D4
						with(TestInventoryDecisions) {
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 4249B548
							/// @DnDApplyTo : {TestInventoryDecisions}
							/// @DnDParent : 65667CE2
							/// @DnDArgument : "expr" "2"
							/// @DnDArgument : "var" "itemSelected"
							with(TestInventoryDecisions) {
							itemSelected = 2;
							
							}
						}}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 7D03B54A
					/// @DnDParent : 782B737E
					else{	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4AD5739B
						/// @DnDParent : 7D03B54A
						/// @DnDArgument : "var" "itemSelected"
						/// @DnDArgument : "value" "2"
						if(itemSelected == 2){	/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 1955C703
							/// @DnDParent : 4AD5739B
							/// @DnDArgument : "var" "global.plantObject"
							/// @DnDArgument : "value" "1"
							if(global.plantObject == 1){	/// @DnDAction : YoYo Games.Common.Set_Global
								/// @DnDVersion : 1
								/// @DnDHash : 026C2D09
								/// @DnDParent : 1955C703
								/// @DnDArgument : "var" "global.combining"
								global.combining = 0;
							
								/// @DnDAction : YoYo Games.Instances.Destroy_Instance
								/// @DnDVersion : 1
								/// @DnDHash : 7368AC2C
								/// @DnDApplyTo : {InventoryTestObject}
								/// @DnDParent : 1955C703
								with(InventoryTestObject) instance_destroy();
							
								/// @DnDAction : YoYo Games.Instances.Destroy_Instance
								/// @DnDVersion : 1
								/// @DnDHash : 62F08ABC
								/// @DnDApplyTo : {TestPlant_1}
								/// @DnDParent : 1955C703
								with(TestPlant_1) instance_destroy();
							
								/// @DnDAction : YoYo Games.Instances.Create_Instance
								/// @DnDVersion : 1
								/// @DnDHash : 748D76EB
								/// @DnDParent : 1955C703
								/// @DnDArgument : "xpos" "681"
								/// @DnDArgument : "ypos" "101"
								/// @DnDArgument : "objectid" "TestCombinedObject"
								/// @DnDArgument : "layer" ""Instances_2""
								/// @DnDSaveInfo : "objectid" "TestCombinedObject"
								instance_create_layer(681, 101, "Instances_2", TestCombinedObject);}}}}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 621675AD
			/// @DnDParent : 36458EF1
			/// @DnDArgument : "var" "itemSelected"
			/// @DnDArgument : "value" "3"
			if(itemSelected == 3){	/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 13A5950D
				/// @DnDParent : 621675AD
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "var" "global.selectionOpen"
				global.selectionOpen = 1;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 539BDC5F
				/// @DnDParent : 621675AD
				/// @DnDArgument : "xpos" "661"
				/// @DnDArgument : "ypos" "101"
				/// @DnDArgument : "objectid" "TestInventoryDecisions"
				/// @DnDArgument : "layer" ""Instances_2""
				/// @DnDSaveInfo : "objectid" "TestInventoryDecisions"
				instance_create_layer(661, 101, "Instances_2", TestInventoryDecisions);}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 408DDF12
			/// @DnDParent : 36458EF1
			/// @DnDArgument : "var" "itemSelected"
			/// @DnDArgument : "value" "4"
			if(itemSelected == 4){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 258D86CB
				/// @DnDParent : 408DDF12
				/// @DnDArgument : "xpos" "101"
				/// @DnDArgument : "ypos" "402"
				/// @DnDArgument : "objectid" "TestInventoryDecisions"
				/// @DnDArgument : "layer" ""Instances_2""
				/// @DnDSaveInfo : "objectid" "TestInventoryDecisions"
				instance_create_layer(101, 402, "Instances_2", TestInventoryDecisions);
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 746753C9
				/// @DnDParent : 408DDF12
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "var" "global.selectionOpen"
				global.selectionOpen = 1;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2EFB736D
			/// @DnDParent : 36458EF1
			/// @DnDArgument : "var" "itemSelected"
			/// @DnDArgument : "value" "5"
			if(itemSelected == 5){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 79827F5B
				/// @DnDParent : 2EFB736D
				/// @DnDArgument : "xpos" "381"
				/// @DnDArgument : "ypos" "402"
				/// @DnDArgument : "objectid" "TestInventoryDecisions"
				/// @DnDArgument : "layer" ""Instances_2""
				/// @DnDSaveInfo : "objectid" "TestInventoryDecisions"
				instance_create_layer(381, 402, "Instances_2", TestInventoryDecisions);
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 59C496DD
				/// @DnDParent : 2EFB736D
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "var" "global.selectionOpen"
				global.selectionOpen = 1;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4A703DC5
			/// @DnDParent : 36458EF1
			/// @DnDArgument : "var" "itemSelected"
			/// @DnDArgument : "value" "6"
			if(itemSelected == 6){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5B3393A4
				/// @DnDParent : 4A703DC5
				/// @DnDArgument : "xpos" "661"
				/// @DnDArgument : "ypos" "402"
				/// @DnDArgument : "objectid" "TestInventoryDecisions"
				/// @DnDArgument : "layer" ""Instances_2""
				/// @DnDSaveInfo : "objectid" "TestInventoryDecisions"
				instance_create_layer(661, 402, "Instances_2", TestInventoryDecisions);
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 0728B3DE
				/// @DnDParent : 4A703DC5
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "var" "global.selectionOpen"
				global.selectionOpen = 1;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 20B500DD
			/// @DnDParent : 36458EF1
			/// @DnDArgument : "var" "itemSelected"
			/// @DnDArgument : "value" "7"
			if(itemSelected == 7){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 4F86A41D
				/// @DnDParent : 20B500DD
				/// @DnDArgument : "xpos" "101"
				/// @DnDArgument : "ypos" "703"
				/// @DnDArgument : "objectid" "TestInventoryDecisions"
				/// @DnDArgument : "layer" ""Instances_2""
				/// @DnDSaveInfo : "objectid" "TestInventoryDecisions"
				instance_create_layer(101, 703, "Instances_2", TestInventoryDecisions);
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 3ACADE5E
				/// @DnDParent : 20B500DD
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "var" "global.selectionOpen"
				global.selectionOpen = 1;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5BA75A98
			/// @DnDParent : 36458EF1
			/// @DnDArgument : "var" "itemSelected"
			/// @DnDArgument : "value" "8"
			if(itemSelected == 8){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 3AA2AC88
				/// @DnDParent : 5BA75A98
				/// @DnDArgument : "xpos" "381"
				/// @DnDArgument : "ypos" "703"
				/// @DnDArgument : "objectid" "TestInventoryDecisions"
				/// @DnDArgument : "layer" ""Instances_2""
				/// @DnDSaveInfo : "objectid" "TestInventoryDecisions"
				instance_create_layer(381, 703, "Instances_2", TestInventoryDecisions);
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 0C3216D0
				/// @DnDParent : 5BA75A98
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "var" "global.selectionOpen"
				global.selectionOpen = 1;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6660B3B4
			/// @DnDParent : 36458EF1
			/// @DnDArgument : "var" "itemSelected"
			/// @DnDArgument : "value" "9"
			if(itemSelected == 9){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 3EAC2BD1
				/// @DnDParent : 6660B3B4
				/// @DnDArgument : "xpos" "661"
				/// @DnDArgument : "ypos" "703"
				/// @DnDArgument : "objectid" "TestInventoryDecisions"
				/// @DnDArgument : "layer" ""Instances_2""
				/// @DnDSaveInfo : "objectid" "TestInventoryDecisions"
				instance_create_layer(661, 703, "Instances_2", TestInventoryDecisions);
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 522384D4
				/// @DnDParent : 6660B3B4
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "var" "global.selectionOpen"
				global.selectionOpen = 1;}}}}