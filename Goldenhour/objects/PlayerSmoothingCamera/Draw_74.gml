/// @description Insert description here
// You can write your code in this editor

if (surface_exists(view_surf)) {
	draw_surface_part(view_surf, frac(x), frac(y), game_width, game_height, 0, 0);
}