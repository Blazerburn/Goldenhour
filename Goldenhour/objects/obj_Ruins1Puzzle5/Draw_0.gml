draw_self();

if(puzzleProgress == 0)
{

}

if(puzzleProgress == 1)
{
	with (collision) {
	image_xscale = .5;
	}
	with (collision2) {
	image_yscale = .5;
	}
	instance_destroy(pathCollision);
	
}

