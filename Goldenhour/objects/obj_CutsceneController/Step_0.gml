global.cutscene = true;
global.Immobilize = 1;

/*
var _advance = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left);

if (fade_state == "in") {
    alpha = min(alpha + 0.05, 1);
    if (alpha >= 1) fade_state = "hold";
}
else if (fade_state == "hold") {
    if (_advance) {
        fade_state = "out";
    }
}
else if (fade_state == "out") {
    alpha = max(alpha - 0.05, 0);
    if (alpha <= 0) {
        current_panel++;
        if (current_panel >= array_length(panels)) {
            // Storyboard finished: transition to gameplay room or destroy object
            room_goto_next(); 
        } else {
            fade_state = "in";
        }
    }
}