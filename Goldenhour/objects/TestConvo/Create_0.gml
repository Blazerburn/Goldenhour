/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A20A55A
/// @DnDArgument : "expr" ""It's a broken switch""
/// @DnDArgument : "var" "text[0]"
text[0] = "It's a broken switch";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0B81D6D0
/// @DnDInput : 7
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
textLast = 0;
textWidth = 900;
textX = 32;
textY = 725;
headshotTextWidth = 700;
headshotTextX = 250;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2D9496DF
/// @DnDInput : 2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "0.25"
/// @DnDArgument : "var" "charCurrent"
/// @DnDArgument : "var_1" "charSpeed"
charCurrent = 1;
charSpeed = 0.25;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1E06C9C5
/// @DnDInput : 2
/// @DnDArgument : "var" "text[textCurrent]"
/// @DnDArgument : "function" "stringWrap"
/// @DnDArgument : "arg" "text[textCurrent]"
/// @DnDArgument : "arg_1" "textWidth"
text[textCurrent] = stringWrap(text[textCurrent], textWidth);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 42AB32EE
/// @DnDInput : 2
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_1" "1"
/// @DnDArgument : "var" "global.Immobilize"
/// @DnDArgument : "var_1" "global.Talking"
global.Immobilize = 1;
global.Talking = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 11D2B72F
/// @DnDInput : 2
/// @DnDArgument : "var" "decisionsTrue"
/// @DnDArgument : "var_1" "decisions"
decisionsTrue = 0;
decisions = 0;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4469CAC6
/// @DnDInput : 2
/// @DnDArgument : "var" "text[textCurrent]"
/// @DnDArgument : "function" "stringWrap"
/// @DnDArgument : "arg" "text[textCurrent]"
/// @DnDArgument : "arg_1" "headshotTextWidth"
text[textCurrent] = stringWrap(text[textCurrent], headshotTextWidth);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5465A37E
/// @DnDArgument : "var" "headshotTexts[0]"
headshotTexts[0] = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5F78CED8
/// @DnDArgument : "var" "headshotHead[0]"
headshotHead[0] = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D1318F9
/// @DnDArgument : "var" "textEnding"
textEnding = 0;