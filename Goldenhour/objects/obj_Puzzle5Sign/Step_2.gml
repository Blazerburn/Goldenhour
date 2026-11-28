if layer_exists("PerspectiveBuilding") {
	if obj_SpecificDepthController.colliding = 1 {
		//event_inherited()

		//update_layer()

		var _depthID = layer_get_id("PerspectiveBuilding")
		var _layerDepth = layer_get_depth(_depthID) - 1
		var _depth = depth + 1
		show_debug_message(_layerDepth)
		//layer_depth(_depthID, _depth)


		depth = _layerDepth


	}
}
