if !surface_exists(masksurf)
    {
    var _cw = room_width;
	var _ch = room_height;
	var _cx = camera_get_view_x(view_camera[0]);
	var _cy = camera_get_view_y(view_camera[0]);
    masksurf = surface_create(_cw, _ch);
    surface_set_target(masksurf);
	gpu_set_blendenable(false)
    draw_set_colour(c_black);
    draw_set_alpha(0);
	
	if layer_exists("NoLight") {
	draw_tilemap(NoLightMap, 0 - _cx, 0 - _cy) }
	//if layer_exists("ShadowsBelow") {
	//draw_tilemap(shadowMapB, 0 - _cx, 0 - _cy) }
    surface_reset_target();
	gpu_set_blendenable(true)
    }
	
if !surface_exists(lightsurf)
    {
    var _cw = room_width;
	var _ch = room_height;
	var _cx = camera_get_view_x(view_camera[0]);
	var _cy = camera_get_view_y(view_camera[0]);
    lightsurf = surface_create(_cw, _ch);
    surface_set_target(lightsurf);
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

if (surface_exists(masksurf)) {
	
	//show_debug_message(surf)
	var _cw = room_width;
	var _ch = room_height;
	var _cx = camera_get_view_x(view_camera[0]); 
	var _cy = camera_get_view_y(view_camera[0]);
	//show_debug_message(_cx)
		//show_debug_message(_cy)
	//if amount <= 2 {
	//surf = surface_create(_cw, _ch); //}0
	
	surface_set_target(masksurf);
	draw_clear_alpha(c_black, 0)
	draw_set_color(c_black);
	draw_set_alpha(1)
	
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
				
			case obj_CoreGenerator:
				if global.shiningCityPowered = 1 {
					draw_sprite_ext(spr_GeneratorLighting, 0, x - _cx, y - _cy, 1, 1, 0, c_white, 1);
				}
				break;
				
			case obj_WindowLight:
				with obj_WindowLight {
					draw_sprite_ext(spr_WindowLight, image_index, x - _cx, y - _cy, 1, 1, 0, c_white, 1);
				}
				break;
				
			case obj_MosaicLIght:
				with obj_MosaicLIght {
					draw_sprite_ext(spr_MosaicWindowLight, image_index, x - _cx, y - _cy, 1, 1, 0, c_white, 1);
				}
				break;
		}
	}
	
	gpu_set_blendmode(bm_subtract);
	
	if layer_exists("NoLight") {
	draw_tilemap(NoLightMap, 0 - _cx, 0 - _cy) }
	
	gpu_set_blendmode(bm_normal);
	
	draw_set_alpha(1);
	
	
	surface_reset_target();
	//draw_surface(masksurf, _cx, _cy);
	
	surface_set_target(lightsurf)
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
	

	
	gpu_set_blendmode(bm_subtract);
	draw_surface(masksurf, 0, 0)
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
	draw_set_alpha(1)
	draw_surface(lightsurf, _cx, _cy);
	
	}
//}


/*if (surface_exists(masksurf)) {
	
	//show_debug_message(surf)
	var _cw = room_width;
	var _ch = room_height;
	var _cx = camera_get_view_x(view_camera[0]); 
	var _cy = camera_get_view_y(view_camera[0]);
	//show_debug_message(_cx)
		//show_debug_message(_cy)
	//if amount <= 2 {
	//surf = surface_create(_cw, _ch); //}0
	
	surface_set_target(masksurf);
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
				
			case obj_WindowLight:
				with obj_WindowLight {
					draw_sprite_ext(spr_WindowLight, image_index, x - _cx, y - _cy, 1, 1, 0, c_white, 1);
				}
				break;
		}
	}
	
	gpu_set_blendmode_ext(bm_zero, bm_src_alpha);
	
	if layer_exists("NoLight") {
	draw_tilemap(NoLightMap, 0 - _cx, 0 - _cy) }
	
	gpu_set_blendmode(bm_normal);
	
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	
	
	surface_reset_target();
	draw_surface(masksurf, _cx, _cy);
	
	}
//}