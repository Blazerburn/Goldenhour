pushPlayerDIrection = 0;
interactedBoxID = 0;

pushableBoxOriginX = 0;
pushableBoxOriginY = 0;

global.pushingBox = 0;

var objectID = 0;

show_debug_message(string("Object ID:", objectID));

pushBoxCollision = 0;

pushBoxCollision = instance_create_layer(x + 2, y + 2, "Instances", TestWall);

with(pushBoxCollision) {
image_xscale = .4;
image_yscale = .4;
}

pathCollision = instance_create_layer(x + 2, y + 2, "Instances", PushableWall);

with(pathCollision) {
image_xscale = .4;
image_yscale = .4;
}