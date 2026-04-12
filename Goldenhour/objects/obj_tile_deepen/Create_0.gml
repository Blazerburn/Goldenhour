/// @description Insert description here
// You can write your code in this editor

scr_tile_deepen("TreesTops", 32, 32, room_height);

lid = layer_get_id("TreesTops");
layer_destroy(lid);

scr_tile_deepen("TreesBaseABOVE", 32, 32, room_height);

lid = layer_get_id("TreesBaseABOVE");
layer_destroy(lid);

scr_tile_deepen("TreesSidesABOVE", 32, 32, room_height);

lid = layer_get_id("TreesSidesABOVE");
layer_destroy(lid);

scr_tile_deepen("TreesSides", 32, 32, room_height+64);

lid = layer_get_id("TreesSides");
layer_destroy(lid);

scr_tile_deepen("TreesBase", 32, 32, room_height+64);

lid = layer_get_id("TreesBase");
layer_destroy(lid);

scr_tile_deepen("PerspectiveBuilding", 32, 32, room_height);

lid = layer_get_id("PerspectiveBuilding");
layer_destroy(lid);