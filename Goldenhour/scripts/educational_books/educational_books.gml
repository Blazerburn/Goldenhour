function educational_books(_num){
	show_debug_message("num")
	show_debug_message(_num)
	book = [
	//Book 0
			[
			["You grab a book off the shelf", 
			"The book is titled, 'A Geologist's Guide to Telling Apart Rocks from Taste'",
			"You thumb through the pages of the book, there are several diagrams of tongue on rock action",
			"Tongue on Boulder, Tongue on Pebble, even Tongue on Stalagmite.", 
			"You feel like you've learnt something from these pages"],
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
	
	//show_debug_message(_text_array)
	//show_debug_message(_speaker_array)
	
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
	
	with obj_BookshelvesInt {
		puzzleProgress = 2
	}
}
