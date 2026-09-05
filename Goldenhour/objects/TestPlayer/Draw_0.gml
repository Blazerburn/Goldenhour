/// @description Insert description here
// You can write your code in this editor
var _spritex = floor(x)
var _spritey = floor(y)

draw_sprite(sprite_index, -1, _spritex, _spritey)

if playerDirection = 0 {
		draw_line(x, y, x, y+16)
	}
	else if playerDirection = 1 {
		draw_line(x, y+16, x+16, y+16)
	}
	else if playerDirection = 2 {
		draw_line(x, y+16, x, y+32)
	}
	else if playerDirection = 3 {
		draw_line(x-16, y+16, x, y+16)
	}