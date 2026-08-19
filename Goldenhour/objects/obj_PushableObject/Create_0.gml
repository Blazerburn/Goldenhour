pushPlayerDirection = 0;
interactedBoxID = 0;

NormalSpeed = 1;
SlowSpeed = .33;

image = 0;
greenPuzzle = false;

pushableBoxOriginX = 0;
pushableBoxOriginY = 0;

inst = 0;

global.pushingBox = 0;
global.keepPushing = 0;

var objectID = 0;

//show_debug_message(string("Object ID:", objectID));

mask_index = PushBoxB

pushBoxCollision = 0;
pathCollision = 0;

pushBoxCollision = instance_create_layer(x + 4, y + 4, "Box", TestWall);

with(pushBoxCollision) {
image_xscale = .4;
image_yscale = .4;
}

/*pathCollision = instance_create_layer(x + 8, y + 8, "Box", PushableWall);

with(pathCollision) {
image_xscale = .25;
image_yscale = .25;
}

