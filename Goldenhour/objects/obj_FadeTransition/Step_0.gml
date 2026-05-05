/// @description Insert description here
// You can write your code in this editor


if fadeIn = true {
	alpha += .05
	clamp(alpha, 0, 1)
	if !alpha = 1 {
		global.Immobilize = 1;
	}
	else {
		global.Immobilize = 0;
		instance_destroy()
	}
}

if fadeOut = true {
	alpha -= .05
	clamp(alpha, 0, 1)
	show_debug_message(alpha)
	if alpha = 0 {
		instance_destroy()
	}
	if alpha <= .75 {
		global.Immobilize = 0;
	}
	else {
		global.Immobilize = 1;
	}
}