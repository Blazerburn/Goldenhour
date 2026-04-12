/// @description Insert description here
// You can write your code in this editor
// Set the cell size based on slowest mover speed
global.CELL = 2

// Set the grid height
global.GRID_H = room_height div global.CELL;

// Create the grid
global.layerGrid = ds_grid_create(1, global.GRID_H);

// Create the layers and assign them to a grid cell
for (var i = 0; i < global.GRID_H; i++) {
	global.layerGrid[# 0, i] = layer_create(layer_get_depth("sort_begin") - i);
}