if layer_exists("PerspectiveBuilding2") {
	var _layerID = layer_get_id("PerspectiveBuilding2")
	var _layerDepth = layer_get_depth(_layerID)
	var _objectDepth = obj_SecretDoorBookshelf.depth
	if _layerDepth < _objectDepth {
		layer_depth("Bookshelf", _layerDepth-1)
	}
	else {
		layer_depth("Bookshelf", _objectDepth-1)
	}
}