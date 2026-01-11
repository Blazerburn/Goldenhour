/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A0A3FC5
/// @DnDInput : 3
/// @DnDArgument : "expr" ""Grab the Mysterious Book""
/// @DnDArgument : "expr_1" ""Ignore it""
/// @DnDArgument : "expr_2" """"
/// @DnDArgument : "var" "text1"
/// @DnDArgument : "var_1" "text2"
/// @DnDArgument : "var_2" "text3"
text1 = "Grab the Mysterious Book";
text2 = "Ignore it";
text3 = "";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4281F946
/// @DnDInput : 5
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "expr_2" "100"
/// @DnDArgument : "expr_3" "725 + (100 * textCurrent)"
/// @DnDArgument : "expr_4" "3"
/// @DnDArgument : "var" "textCurrent"
/// @DnDArgument : "var_1" "textLast"
/// @DnDArgument : "var_2" "textX"
/// @DnDArgument : "var_3" "textY"
/// @DnDArgument : "var_4" "lineAmount"
textCurrent = 0;
textLast = 1;
textX = 100;
textY = 725 + (100 * textCurrent);
lineAmount = 3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46456BEA
/// @DnDInput : 6
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "expr_4" "1"
/// @DnDArgument : "expr_5" "2 - textLimitBottom"
/// @DnDArgument : "var" "textSelected"
/// @DnDArgument : "var_1" "textMax"
/// @DnDArgument : "var_2" "textMin"
/// @DnDArgument : "var_3" "textLimitTop"
/// @DnDArgument : "var_4" "textLimitBottom"
/// @DnDArgument : "var_5" "textPastLimitBottom"
textSelected = 0;
textMax = 1;
textMin = 0;
textLimitTop = 0;
textLimitBottom = 1;
textPastLimitBottom = 2 - textLimitBottom;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0BDED288
/// @DnDInput : 2
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_1" "1"
/// @DnDArgument : "var" "global.Immobilize"
/// @DnDArgument : "var_1" "global.Talking"
global.Immobilize = 1;
global.Talking = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 144DCA68
/// @DnDArgument : "expr" "itemSecretBook10thHour"
/// @DnDArgument : "var" "item"
item = itemSecretBook10thHour;