if !surface_exists(surf)
    {
    var _cw = room_width;
	var _ch = room_height;
	var _cx = camera_get_view_x(view_camera[0]);
	var _cy = camera_get_view_y(view_camera[0]);
    surf = surface_create(_cw, _ch);
    surface_set_target(surf);
	gpu_set_blendenable(false)
    draw_set_colour(c_black);
    draw_set_alpha(0);
    draw_rectangle(0, 0, _cw, _cw, false);
	
	if layer_exists("Shadows") {
	draw_tilemap(shadowMapA, 0 - _cx, 0 - _cy) }
	//if layer_exists("ShadowsBelow") {
	//draw_tilemap(shadowMapB, 0 - _cx, 0 - _cy) }
    surface_reset_target();
	gpu_set_blendenable(true)
    }
	
else if (surface_exists(surf)) {
	
	show_debug_message(surf)
	var _cw = room_width;
	var _ch = room_height;
	var _cx = camera_get_view_x(view_camera[0]);
	var _cy = camera_get_view_y(view_camera[0]);
	//if amount <= 2 {
	//surf = surface_create(_cw, _ch); //}0
	
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0)
	draw_set_color(c_black);
	draw_set_alpha(1)
	
	gpu_set_blendmode_ext(bm_one, bm_inv_dest_alpha);
	
	if layer_exists("Shadows") {
	draw_tilemap(shadowMapA, 0 - _cx, 0 - _cy) }
	
	gpu_set_blendmode(bm_normal);
	
	draw_set_alpha(alpha);
	
	draw_rectangle (0, 0, _cw, _ch, 0);
	//alpha = 1;
	
	draw_set_alpha(1)
	
	
	//if layer_exists("ShadowsBelow") {
	//draw_tilemap(shadowMapB, 0 - _cx, 0 - _cy) }
	
	
	
	gpu_set_blendmode(bm_subtract);
	
	with (par_Light)
	    {
			var _sw = sprite_width / 2;
			var _sh = sprite_height / 2;

			switch(object_index)
			{
			case obj_WallLight:
				if global.shiningCityPowered = 1 {
					draw_sprite_ext(spr_WallLightLIGHT, 0, x - _cx, y - _cy, 1, 1, 0, c_white, 1);
				}
				break;
				
			case obj_WallLightLeft:
				if global.shiningCityPowered = 1 {
					draw_sprite_ext(spr_WallLightLeftLIGHT, 0, x - _cx, y - _cy, 1, 1, 0, c_white, 1);
				}
				break;
				
			case obj_WallLightRight:
				if global.shiningCityPowered = 1 {
					draw_sprite_ext(spr_WallLightRightLIGHT, 0, x - _cx, y - _cy, 1, 1, 0, c_white, 1);
				}
				break;
				
			case obj_TorchLight:
				if global.shiningCityPowered = 1 {
					draw_sprite_ext(spr_TorchLightLIGHT, 0, x - _cx, y - _cy, 1, 1, 0, c_white, 1);
				}
				break;
			}
	    }
	
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface(surf, _cx, _cy);
	
	}
//}