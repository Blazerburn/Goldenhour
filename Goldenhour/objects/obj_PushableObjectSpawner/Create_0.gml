var pushableObjectID = 0;
var _image = image
image = _image

var pushableObjectID = instance_create_layer(x + 0, y + 0, "Box", obj_PushableObject);

show_debug_message(string(pushableObjectID));

if greenPuzzle = false {
	with(pushableObjectID) {
		objectID = pushableObjectID;
	
		show_debug_message(string(objectID));
	}
}

else if greenPuzzle = true {
	with(pushableObjectID) {
		objectID = pushableObjectID;
		sprite_index = spr_GreenPushBox
		image_index = _image
		image = _image
		greenPuzzle = true;
		show_debug_message(string(objectID));
	}
}