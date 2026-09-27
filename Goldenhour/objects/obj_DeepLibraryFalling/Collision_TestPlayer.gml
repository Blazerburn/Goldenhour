if activation = 0 {
	show_debug_message("Activated")
	TestPlayer.visible = false;
	global.animating = 1;
	global.Immobilize = 1;
	layer_sequence_create("Assets_1", x+32, y+32, seq_DeepLibraryFalling)
	activation = 1;
}
