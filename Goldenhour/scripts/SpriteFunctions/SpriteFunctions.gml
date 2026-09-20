function shake_sprite(_scale = 1, _length = 0, _id = 0, _x, _y){
	with _id {
		var _random = random(1)
		if _random < .25 {
			_x + 1 * _scale
			_y + 1 * _scale
		}
	}
}