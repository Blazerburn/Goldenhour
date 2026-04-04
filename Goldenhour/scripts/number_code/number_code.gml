// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function number_code(number1, number2, number3, number4, object, progress){
	numberCode = instance_create_layer(x, y, "Instances", obj_numbercode);
	with (numberCode) {
		code1Needed = number1;
		code2Needed = number2;
		code3Needed = number3;
		code4Needed = number4;
		puzzleObject = object;
		puzzleObjectProgress = progress;
	}
	show_debug_message("Object");
	show_debug_message(object);
}