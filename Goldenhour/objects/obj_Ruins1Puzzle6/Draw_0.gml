

if(puzzleProgress == 0)
{
	//draw_sprite(boulder, 1, x-48, y-48)
	draw_self();
	with (collision) {
	image_xscale = .5;
	image_yscale = .75;
	}
	with (pathCollision) {
	image_xscale = .5;
	image_yscale = .5;
	}
}

if(puzzleProgress == 1)
{
	instance_destroy(collision);
	instance_destroy(pathCollision);
	Boulder.sprite_index = boulderbroken
}

