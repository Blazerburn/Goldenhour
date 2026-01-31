

if(puzzleProgress == 0)
{
	draw_sprite(BrokenPathTile, 0, x + 0, y + 0);
}

if(puzzleProgress == 2)
{
	draw_sprite(FixedPathTile, 0, x + 0, y + 0);
}

if(puzzleProgress < 2)
{
	draw_self();
}
