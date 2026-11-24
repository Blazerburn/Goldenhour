function cutscene_dialogue(_num){
	show_debug_message("num")
	show_debug_message(_num)
	_scene = [
	//Book 0
			[
			["Woah, it's red", 
			"I bet the next one is orange"],
			[obj_nochar, obj_nochar],
			-1,
			-1,
			-1,
			-1,
			[-1, [next_scene]],
			-1,
			-1,
			-1,
			-1
			]
		,
		//Book 1
			[
			["Heck yeah!"],
			[obj_nochar],
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1
			]
		,
		//Book 2
			[
			["You grab a book off the shelf", 
			"The book is titled, 'Botany Guide, Volume 3'",
			"'Collector's Bonzai Tree",
			"A specially bred collector's item especially designed to bring life to dreary homes.", 
			"The pink leaves synonymous with the Cotton Oak are deeply saturated and given a brighter tone'"],
			[obj_nochar, obj_nochar, obj_nochar, obj_nochar, obj_nochar],
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1
			]
		,
		//Book 3
			[
			["You grab a book off the shelf", 
			"The book is titled, 'Botany Guide, Volume 4'",
			"'Teal Basil",
			"A species of Teal Leaved Plant.", 
			"The stalks of the Teal Basil are extremely sticky, and when refined, can be turned into a useful industrial grade glue.",
			"They carry the aromatic scent of a kitchen herb",
			"Despite offering no flavor whatsoever, are a favored item for home decorators",
			"Wha- what does that last sentence mean?"],
			[obj_nochar, obj_nochar, obj_nochar, obj_nochar, obj_nochar, obj_nochar, obj_nochar, TestPlayer],
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1
			]
	];
	
	
	show_debug_message(_scene[_num])
	
	var _data = _scene[_num];

	
	var _text_array    = _data[0];
	var _speaker_array = _data[1]; 
	var _arg2          = _data[2]; 
	var _arg3          = _data[3]; 
	var _arg4          = _data[4]; 
	var _arg5          = _data[5]; 
	var _arg6          = _data[6]; 
	var _arg7          = _data[7]; 
	var _arg8          = _data[8]; 
	var _arg9          = _data[9];
	var _arg10         = _data[10];
	
	//show_debug_message(_text_array)
	//show_debug_message(_speaker_array)
	
	
	if instance_exists(obj_textbox) {
		instance_destroy(obj_textbox)
	}
	create_textevent(_text_array, 
	_speaker_array, 
	_arg2, 
	_arg3, 
	_arg4,
	_arg5, 
	_arg6, 
	_arg7, 
	_arg8, 
	_arg9,
	_arg10,
	);
	

}