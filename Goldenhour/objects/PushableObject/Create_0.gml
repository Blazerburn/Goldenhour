pushPlayerDirection = 0;
interactedBoxID = 0;

NormalSpeed = 1;
SlowSpeed = .33;

pushableBoxOriginX = 0;
pushableBoxOriginY = 0;

global.pushingBox = 0;
global.keepPushing = 0;

var objectID = 0;

//show_debug_message(string("Object ID:", objectID));

pushBoxCollision = 0;

pushBoxCollision = instance_create_layer(x + 2, y + 6, "Box", TestWall);

with(pushBoxCollision) {
image_xscale = .4;
image_yscale = .35;
}

pathCollision = instance_create_layer(x + 8, y + 8, "Box", PushableWall);

with(pathCollision) {
image_xscale = .225;
image_yscale = .2;
}

