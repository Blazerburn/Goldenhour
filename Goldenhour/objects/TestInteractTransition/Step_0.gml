/// @description Insert description here
// You can write your code in this editor
if fadeIn = true {
	alpha += .05
	clamp(alpha, 0, 1)
	show_debug_message("Fading in:" + string(alpha))
	if alpha = 1 {
		show_debug_message(alpha)
		show_debug_message("Transition")
		global.startPlayerDirection = playerDirection;
		global.Immobilize = 0;
		fadeIn = false;
		room_goto(goToRoom);
	}
}

if fadeOut = true {
	alpha -= .05
	clamp(alpha, 0, 1)
	show_debug_message("Fading out:" + string(alpha))
	if alpha = 0 {
		show_debug_message(alpha)
		show_debug_message("Transition")
		global.startPlayerDirection = playerDirection;
		global.Immobilize = 0;
		fadeOut = false;
		room_goto(goToRoom);
	}
}