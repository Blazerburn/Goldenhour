/// @description Insert description here
// You can write your code in this editor
event_inherited();

if fadeIn = true {
	alpha += .05
	clamp(alpha, 0, 1)
	show_debug_message(alpha)
	if alpha = 1 {
		show_debug_message(alpha)
		show_debug_message("Transition")
		global.startPlayerDirection = playerDirection;
		global.Immobilize = 0;
		room_goto(goToRoom);
	}
}

if fadeOut = true {
	alpha -= .05
	clamp(alpha, 0, 1)
	show_debug_message(alpha)
	if alpha = 0 {
		show_debug_message(alpha)
		show_debug_message("Transition")
		global.startPlayerDirection = playerDirection;
		global.Immobilize = 0;
		room_goto(goToRoom);
	}
}