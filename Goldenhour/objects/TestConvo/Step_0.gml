/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3A3DB0DC
/// @DnDArgument : "var" "textShaking[textCurrent]"
/// @DnDArgument : "value" "1"
if(textShaking[textCurrent] == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 1FCF3C2F
	/// @DnDParent : 3A3DB0DC
	/// @DnDArgument : "var" "textVariance"
	/// @DnDArgument : "min" "-10"
	/// @DnDArgument : "max" "10"
	textVariance = (random_range(-10, 10));}