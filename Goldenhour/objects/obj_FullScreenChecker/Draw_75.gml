var _displayheight = display_get_gui_height()
var _displaywidth = display_get_gui_width()



if global.fullscreen or global.borderlessWindow = true {
	draw_rectangle_colour(-1000, 0, 0, _displayheight, c_black, c_black, c_black, c_black, false)
	draw_rectangle_colour(_displaywidth, 0, _displaywidth + 1000, _displayheight, c_black, c_black, c_black, c_black, false)
}