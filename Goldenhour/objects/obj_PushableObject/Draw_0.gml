/// @description Insert description here
// You can write your code in this editor
var _spritex = round(x)
var _spritey = round(y)


draw_sprite(sprite_index, -1, _spritex, _spritey)

draw_set_colour(c_white)
draw_rectangle(x+1, y+1, x+31, y+31, true)
draw_rectangle(TestPlayer.x-10, TestPlayer.y+16, TestPlayer.x+10, TestPlayer.y+30, true)

with TestPlayer {
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
}

draw_rectangle(x+2, y+4, x, y+28, true)
draw_rectangle(x+4, y+2, x+28, y, true)
draw_rectangle(x+30, y+4, x+32, y+28, true)
draw_rectangle(x+4, y+30, x+28, y+32, true)

draw_rectangle(x, y+16, x-20, y+28, true)
draw_rectangle(x+4, y, x+28, y-12, true)
draw_rectangle(x+32, y+16, x+52, y+28, true)
draw_rectangle(x+4, y+32, x+28, y+44, true)

draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);