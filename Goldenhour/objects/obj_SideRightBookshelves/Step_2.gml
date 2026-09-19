if layer_exists("PerspectiveBuilding2") {
	var _layerID = layer_get_id("PerspectiveBuilding2")
	var _layerDepth = layer_get_depth(_layerID)
	layer_depth("Bookshelf", _layerDepth-1)
}