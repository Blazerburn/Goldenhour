/// @description Insert description here
// You can write your code in this editor
var _playerDepth = TestPlayer.depth

if layer_exists("BoxPathABOVE") {
	layer_depth("BoxPathABOVE", _playerDepth + 1)
}

if instance_exists(PushableObject) {
	PushableObject.depth = _playerDepth + 2
}