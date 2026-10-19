event_inherited(); //so it will inherit from par_speaker

if puzzleProgress = 1 {
	bookAmount = array_length(books)
	bookToRead = round(random(bookAmount-1))
	bookRead = array_get(books, bookToRead);
	
	show_debug_message(bookAmount)
	show_debug_message(bookToRead)
	show_debug_message(bookRead)
	show_debug_message(books)
	//show_debug_message(book[bookToRead])
	puzzleProgress = 0
}
else if puzzleProgress = 2 {
	array_delete(books, bookToRead, 1);
	//bookToRead = 0;
	puzzleProgress = 0;
}
//show_debug_message(bookToRead)

if choice_variable = "Take" {
	bookshelf_books(bookRead)
	choice_variable = "Took"
}





//choice_variable = round(random(4))
//show_debug_message(choice_variable)

//update_layer();
/*

Other code
codecodecode