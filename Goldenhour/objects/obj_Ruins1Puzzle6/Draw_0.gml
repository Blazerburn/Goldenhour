

if(puzzleProgress == 0)
{
	draw_sprite(boulder, 1, x-8, y)
	draw_self();
	with (collision) {
	image_xscale = .5;
	image_yscale = .5;
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
	
}

