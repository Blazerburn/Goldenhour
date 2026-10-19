function bookshelf_books(_num){
	book = [
	//Book 0
			[
			["You grab a book off the shelf", 
			"The book is titled, 'Botany Guide, Volume 1'",
			"'Oil Pods",
			"A species of Carnivorous plant with a rare green hue",
			"The Glowing Pustules on the Plant's surface are made of a special Oil the plant produces from the proteins of its prey.",
			"Insects and other prey alike are attracted to these glowing pods", 
			"and get stuck on the barbed membranes of the plant, dying and fueling the plant to create more Oil.",
			"They create a subtle amber glow, which, for those rich in taste, is an attractive decoration to line halls with.'",
			"Hm, so things still eat things in this world"],
			[obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, TestPlayer],
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
		//Book 1
			[
			["You grab a book off the shelf", 
			"The book is titled, 'Botany Guide, Volume 2'",
			"'Fern",
			"These blue leafy plants can be further emulsified and blended into healing compounds", 
			"However, incorrectly mixing the compound can result in several side effects, including but not limiting:",
			"Sudden Onset Blindness",
			"Sudden Onset Deafness", 
			"Sudden Onset Death",
			"Vomiting",
			"Blue Jaundice",
			"And Gradual Onset Paralysis'",
			"Guess that's one benefit of not having a mouth...",
			"Cause otherwise I would be tempted..."],
			[obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, TestPlayer, TestPlayer],
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
			[obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt],
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
			[obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, TestPlayer],
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
	show_debug_message(book[_num])
	//script_execute_ext(create_textevent, book[_num])
	// 1. Get the specific book entry array
	var _data = book[_num];

	// 2. Extract the nested arrays into easy-to-read local variables
	var _text_array    = _data[0]; // ["You grab a book...", "The book looks..."]
	var _speaker_array = _data[1]; // [TestPlayer, TestPlayer]
	var _arg2          = _data[2]; // -1
	var _arg3          = _data[3]; // -1
	var _arg4          = _data[4]; // -1
	var _arg5          = _data[5]; // -1
	var _arg6          = _data[6]; // -1
	var _arg7          = _data[7]; // [[-1], [-1]]
	var _arg8          = _data[8]; // -1
	var _arg9          = _data[9]; // -1
	var _arg10         = _data[10];// -1
	
	show_debug_message(_text_array)
	show_debug_message(_speaker_array)
	
	// 3. Call your function normally using your extracted variables
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
