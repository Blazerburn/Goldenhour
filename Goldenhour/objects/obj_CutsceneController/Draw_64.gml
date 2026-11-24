
var _num = sprite_get_number(scene)

draw_sprite(scene, i, 0, 0)

for(var i = 0; i < _num-1; i += 1) {
	
	
	show_debug_message(i)
	i++
}

/*
if (current_panel < array_length(panels)) {
    var _data = panels[current_panel];
    var _gui_w = display_get_gui_width();
    var _gui_h = display_get_gui_height();

    draw_set_alpha(alpha);

    // Draw panel image centered
    draw_sprite(_data.image, 0, _gui_w * 0.5, _gui_h * 0.45);

    // Draw caption text below
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    draw_text_ext(_gui_w * 0.5, _gui_h * 0.75, _data.text, 24, _gui_w * 0.7);

    // Reset draw state
    draw_set_alpha(1);
    draw_set_halign(fa_left);
}