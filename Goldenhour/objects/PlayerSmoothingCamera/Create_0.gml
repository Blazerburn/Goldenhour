/// @description Insert description here
// You can write your code in this editor
application_surface_enable(false)

game_width = camera_get_view_width(view_camera[0]);
game_height = camera_get_view_height(view_camera[0]);

camera_set_view_size(view_camera[0], game_width + 1, game_height + 1);
display_set_gui_size(game_width, game_height);
view_surf = -1

show_debug_message(game_width)
show_debug_message(game_height)