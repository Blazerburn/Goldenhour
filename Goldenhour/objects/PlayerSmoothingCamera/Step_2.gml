/// @description Insert description here
// You can write your code in this editor


camera_set_view_pos(view_camera[0], floor(x), floor(y));
if (!surface_exists(view_surf)) {
	view_surf = surface_create(game_width + 1, game_height + 1);
}
view_surface_id[0] = view_surf;