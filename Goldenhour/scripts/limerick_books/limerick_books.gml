function limerick_books(_num, _id){
	show_debug_message("num")
	show_debug_message(_num)
	book = [
	//Book 0
			[
			["You grab a book off the shelf", 
			"The book is titled, 'The Limericks of the Late Danboree'",
			"'Limerick 1 ,The Fat Little Teapot'",
			"Oh now we're talking.",
			"'I am a Teapot, oh so fat, I'm so full of tea, so I take off my hat.",
			"Steam pours out and I take a bow! Tea pours out flowing down my brow!'", 
			"This is getting good, liking this guy.",
			"'I bow too deep, and my body goes splat.'",
			"What? Did they die?",
			"'Author's Note: The Fat Little Teapot shattered into a billion pieces.'",
			"...",
			"At least I can grieve now..."],
			[obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, TestPlayer, obj_BookshelvesInt, obj_BookshelvesInt, TestPlayer, obj_BookshelvesInt, TestPlayer, obj_BookshelvesInt, obj_BookshelvesInt, TestPlayer],
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
			"The book is titled, 'The Limericks of the Late Danboree'",
			"'Limerick 2, The Stinky Skink",
			"I am an awful Skink who stinks like garbage.", 
			"I've been considering suicide.'",
			"This is just blatantly not a limerick.",
			"'I've purchased a rope, but I have no thumbs to tie it.'", 
			"That's enough of that.",
			"You morosely place the book back."],
			[obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt, obj_BookshelvesInt],
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
	
	with _id {
		puzzleProgress = 2
	}
}
