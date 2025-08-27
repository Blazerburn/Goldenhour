/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6516BD8B
/// @DnDArgument : "var" "global.recentlyInteracted"
if(global.recentlyInteracted == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 585FC670
	/// @DnDParent : 6516BD8B
	/// @DnDArgument : "var" "textSelected"
	if(textSelected == 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5AB15138
		/// @DnDParent : 585FC670
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 63EABA46
		/// @DnDParent : 585FC670
		/// @DnDArgument : "objectid" "TestConvo"
		/// @DnDSaveInfo : "objectid" "TestConvo"
		instance_create_layer(0, 0, "Instances", TestConvo);
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 1A3B5AC1
		/// @DnDApplyTo : {TestConvo}
		/// @DnDParent : 585FC670
		with(TestConvo) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3376D0AF
			/// @DnDInput : 6
			/// @DnDParent : 1A3B5AC1
			/// @DnDArgument : "expr" ""You poke it""
			/// @DnDArgument : "expr_1" ""...""
			/// @DnDArgument : "expr_2" ""...""
			/// @DnDArgument : "expr_3" ""Nothing happens""
			/// @DnDArgument : "expr_4" ""Fuck""
			/// @DnDArgument : "expr_5" ""Maybe if you ask it nicely?""
			/// @DnDArgument : "var" "text[0]"
			/// @DnDArgument : "var_1" "text[1]"
			/// @DnDArgument : "var_2" "text[2]"
			/// @DnDArgument : "var_3" "text[3]"
			/// @DnDArgument : "var_4" "text[4]"
			/// @DnDArgument : "var_5" "text[5]"
			text[0] = "You poke it";
			text[1] = "...";
			text[2] = "...";
			text[3] = "Nothing happens";
			text[4] = "Fuck";
			text[5] = "Maybe if you ask it nicely?";
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1C9BD382
			/// @DnDInput : 7
			/// @DnDParent : 1A3B5AC1
			/// @DnDArgument : "expr_1" "5"
			/// @DnDArgument : "expr_2" "900"
			/// @DnDArgument : "expr_3" "32"
			/// @DnDArgument : "expr_4" "725"
			/// @DnDArgument : "expr_5" "700"
			/// @DnDArgument : "expr_6" "250"
			/// @DnDArgument : "var" "textCurrent"
			/// @DnDArgument : "var_1" "textLast"
			/// @DnDArgument : "var_2" "textWidth"
			/// @DnDArgument : "var_3" "textX"
			/// @DnDArgument : "var_4" "textY"
			/// @DnDArgument : "var_5" "headshotTextWidth"
			/// @DnDArgument : "var_6" "headshotTextX"
			textCurrent = 0;
			textLast = 5;
			textWidth = 900;
			textX = 32;
			textY = 725;
			headshotTextWidth = 700;
			headshotTextX = 250;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5ED5FA11
			/// @DnDInput : 6
			/// @DnDParent : 1A3B5AC1
			/// @DnDArgument : "expr_2" "1"
			/// @DnDArgument : "expr_4" "1"
			/// @DnDArgument : "expr_5" "1"
			/// @DnDArgument : "var" "headshotTexts[0]"
			/// @DnDArgument : "var_1" "headshotTexts[1]"
			/// @DnDArgument : "var_2" "headshotTexts[2]"
			/// @DnDArgument : "var_3" "headshotTexts[3]"
			/// @DnDArgument : "var_4" "headshotTexts[4]"
			/// @DnDArgument : "var_5" "headshotTexts[5]"
			headshotTexts[0] = 0;
			headshotTexts[1] = 0;
			headshotTexts[2] = 1;
			headshotTexts[3] = 0;
			headshotTexts[4] = 1;
			headshotTexts[5] = 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3E36C70B
			/// @DnDInput : 6
			/// @DnDParent : 1A3B5AC1
			/// @DnDArgument : "expr_2" "1"
			/// @DnDArgument : "expr_4" "2"
			/// @DnDArgument : "expr_5" "104"
			/// @DnDArgument : "var" "headshotHead[0]"
			/// @DnDArgument : "var_1" "headshotHead[1]"
			/// @DnDArgument : "var_2" "headshotHead[2]"
			/// @DnDArgument : "var_3" "headshotHead[3]"
			/// @DnDArgument : "var_4" "headshotHead[4]"
			/// @DnDArgument : "var_5" "headshotHead[5]"
			headshotHead[0] = 0;
			headshotHead[1] = 0;
			headshotHead[2] = 1;
			headshotHead[3] = 0;
			headshotHead[4] = 2;
			headshotHead[5] = 104;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 445D4A35
			/// @DnDInput : 2
			/// @DnDParent : 1A3B5AC1
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "TestDecisions"
			/// @DnDArgument : "var" "decisionsTrue"
			/// @DnDArgument : "var_1" "decisions"
			decisionsTrue = 1;
			decisions = TestDecisions;
		}
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 653111A5
		/// @DnDParent : 585FC670
		exit;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18754B4F
	/// @DnDParent : 6516BD8B
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "value" "1"
	if(textSelected == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4BC1A7F5
		/// @DnDParent : 18754B4F
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 62452721
		/// @DnDParent : 18754B4F
		/// @DnDArgument : "objectid" "TestConvo"
		/// @DnDSaveInfo : "objectid" "TestConvo"
		instance_create_layer(0, 0, "Instances", TestConvo);
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 2420059A
		/// @DnDApplyTo : {TestConvo}
		/// @DnDParent : 18754B4F
		with(TestConvo) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 195D4DDD
			/// @DnDInput : 7
			/// @DnDParent : 2420059A
			/// @DnDArgument : "expr" ""Hey!""
			/// @DnDArgument : "expr_1" ""Could you please work?""
			/// @DnDArgument : "expr_2" ""...""
			/// @DnDArgument : "expr_3" ""...""
			/// @DnDArgument : "expr_4" ""Nothing happens""
			/// @DnDArgument : "expr_5" ""Fuck""
			/// @DnDArgument : "expr_6" ""Yeah I think it's just broken...""
			/// @DnDArgument : "var" "text[0]"
			/// @DnDArgument : "var_1" "text[1]"
			/// @DnDArgument : "var_2" "text[2]"
			/// @DnDArgument : "var_3" "text[3]"
			/// @DnDArgument : "var_4" "text[4]"
			/// @DnDArgument : "var_5" "text[5]"
			/// @DnDArgument : "var_6" "text[6]"
			text[0] = "Hey!";
			text[1] = "Could you please work?";
			text[2] = "...";
			text[3] = "...";
			text[4] = "Nothing happens";
			text[5] = "Fuck";
			text[6] = "Yeah I think it's just broken...";
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5385A92C
			/// @DnDInput : 7
			/// @DnDParent : 2420059A
			/// @DnDArgument : "expr_1" "6"
			/// @DnDArgument : "expr_2" "900"
			/// @DnDArgument : "expr_3" "32"
			/// @DnDArgument : "expr_4" "725"
			/// @DnDArgument : "expr_5" "700"
			/// @DnDArgument : "expr_6" "250"
			/// @DnDArgument : "var" "textCurrent"
			/// @DnDArgument : "var_1" "textLast"
			/// @DnDArgument : "var_2" "textWidth"
			/// @DnDArgument : "var_3" "textX"
			/// @DnDArgument : "var_4" "textY"
			/// @DnDArgument : "var_5" "headshotTextWidth"
			/// @DnDArgument : "var_6" "headshotTextX"
			textCurrent = 0;
			textLast = 6;
			textWidth = 900;
			textX = 32;
			textY = 725;
			headshotTextWidth = 700;
			headshotTextX = 250;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74BE3893
			/// @DnDInput : 7
			/// @DnDParent : 2420059A
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "expr_3" "1"
			/// @DnDArgument : "expr_5" "1"
			/// @DnDArgument : "expr_6" "1"
			/// @DnDArgument : "var" "headshotTexts[0]"
			/// @DnDArgument : "var_1" "headshotTexts[1]"
			/// @DnDArgument : "var_2" "headshotTexts[2]"
			/// @DnDArgument : "var_3" "headshotTexts[3]"
			/// @DnDArgument : "var_4" "headshotTexts[4]"
			/// @DnDArgument : "var_5" "headshotTexts[5]"
			/// @DnDArgument : "var_6" "headshotTexts[6]"
			headshotTexts[0] = 1;
			headshotTexts[1] = 1;
			headshotTexts[2] = 0;
			headshotTexts[3] = 1;
			headshotTexts[4] = 0;
			headshotTexts[5] = 1;
			headshotTexts[6] = 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 510C5A27
			/// @DnDInput : 7
			/// @DnDParent : 2420059A
			/// @DnDArgument : "expr" "4"
			/// @DnDArgument : "expr_1" "1"
			/// @DnDArgument : "expr_3" "1"
			/// @DnDArgument : "expr_5" "7"
			/// @DnDArgument : "expr_6" "106"
			/// @DnDArgument : "var" "headshotHead[0]"
			/// @DnDArgument : "var_1" "headshotHead[1]"
			/// @DnDArgument : "var_2" "headshotHead[2]"
			/// @DnDArgument : "var_3" "headshotHead[3]"
			/// @DnDArgument : "var_4" "headshotHead[4]"
			/// @DnDArgument : "var_5" "headshotHead[5]"
			/// @DnDArgument : "var_6" "headshotHead[6]"
			headshotHead[0] = 4;
			headshotHead[1] = 1;
			headshotHead[2] = 0;
			headshotHead[3] = 1;
			headshotHead[4] = 0;
			headshotHead[5] = 7;
			headshotHead[6] = 106;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 105AE85F
			/// @DnDInput : 2
			/// @DnDParent : 2420059A
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "TestDecisions"
			/// @DnDArgument : "var" "decisionsTrue"
			/// @DnDArgument : "var_1" "decisions"
			decisionsTrue = 1;
			decisions = TestDecisions;
		}
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 20B04F3E
		/// @DnDParent : 18754B4F
		exit;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18B05B26
	/// @DnDParent : 6516BD8B
	/// @DnDArgument : "var" "textSelected"
	/// @DnDArgument : "value" "2"
	if(textSelected == 2){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7C7B5B5A
		/// @DnDParent : 18B05B26
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1B3B268B
		/// @DnDApplyTo : {TestInteractableTrue}
		/// @DnDParent : 18B05B26
		/// @DnDArgument : "objind" "TestInteractable"
		/// @DnDSaveInfo : "objind" "TestInteractable"
		with(TestInteractableTrue) instance_change(TestInteractable, true);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 1636D315
		/// @DnDInput : 2
		/// @DnDParent : 18B05B26
		/// @DnDArgument : "var" "global.Immobilize"
		/// @DnDArgument : "var_1" "global.Talking"
		global.Immobilize = 0;
		global.Talking = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 4BB9D19D
		/// @DnDParent : 18B05B26
		/// @DnDArgument : "value" ".25 * room_speed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.recentlyInteracted"
		global.recentlyInteracted += .25 * room_speed;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 66FBBF2C
		/// @DnDParent : 18B05B26
		exit;}}