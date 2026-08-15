event_inherited()

update_layer()

var _depthID = layer_get_id("PerspectiveBuilding")
var _layerDepth = layer_get_depth(_depthID) - 1
var _depth = depth + 1

//layer_depth(_depthID, _depth)

with obj_SpecificDepthController {
	lightDepth = _depth
}

if obj_SpecificDepthController.colliding = 1 {
	depth = _layerDepth
}	

//depth = _layerDepth
