/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A0A3FC5
/// @DnDInput : 3
/// @DnDArgument : "expr" ""Combine""
/// @DnDArgument : "expr_1" ""Info""
/// @DnDArgument : "expr_2" ""Cancel""
/// @DnDArgument : "var" "text1"
/// @DnDArgument : "var_1" "text2"
/// @DnDArgument : "var_2" "text3"
text1 = "Combine";
text2 = "Info";
text3 = "Cancel";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4281F946
/// @DnDInput : 5
/// @DnDArgument : "expr_1" "2"
/// @DnDArgument : "expr_2" "100"
/// @DnDArgument : "expr_3" "725 + (100 * textCurrent)"
/// @DnDArgument : "expr_4" "3"
/// @DnDArgument : "var" "textCurrent"
/// @DnDArgument : "var_1" "textLast"
/// @DnDArgument : "var_2" "textX"
/// @DnDArgument : "var_3" "textY"
/// @DnDArgument : "var_4" "lineAmount"
textCurrent = 0;
textLast = 2;
textX = 100;
textY = 725 + (100 * textCurrent);
lineAmount = 3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46456BEA
/// @DnDInput : 6
/// @DnDArgument : "expr_1" "2"
/// @DnDArgument : "expr_4" "2"
/// @DnDArgument : "expr_5" "2 - textLimitBottom"
/// @DnDArgument : "var" "textSelected"
/// @DnDArgument : "var_1" "textMax"
/// @DnDArgument : "var_2" "textMin"
/// @DnDArgument : "var_3" "textLimitTop"
/// @DnDArgument : "var_4" "textLimitBottom"
/// @DnDArgument : "var_5" "textPastLimitBottom"
textSelected = 0;
textMax = 2;
textMin = 0;
textLimitTop = 0;
textLimitBottom = 2;
textPastLimitBottom = 2 - textLimitBottom;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 187C5983
/// @DnDArgument : "var" "itemSelectedType"
itemSelectedType = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0BDED288
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "global.Immobilize"
global.Immobilize = 1;