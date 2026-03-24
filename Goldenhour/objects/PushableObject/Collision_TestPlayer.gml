if(global.recentlyInteracted == 0)
{
	if(global.pushingBox == 0)
{
	if (global.Talking == 0) {
	var l5CF0C4C3_0;
l5CF0C4C3_0 = keyboard_check_pressed(vk_space);
if (l5CF0C4C3_0)
{
	var pushableBoxOriginX = x;
			var pushableBoxOriginY = y;
		
			global.playerAnimating = 1;
		
			pushPlayerDIrection = global.globalPlayerDirection;
		
			show_debug_message(string("Pushed Box"));
		
			show_debug_message(string(global.globalPlayerDirection));
		
			interactedBoxID = objectID;
		
			show_debug_message(string(interactedBoxID));
		
			global.pushingBox = 1;
		
			with(TestPlayer1) {
				Speed = 1;
			}
		
			show_debug_message(string(pushableBoxOriginX) + @"
			" + string(pushableBoxOriginY));
		
			if(pushPlayerDIrection == 0)
{
	with(TestPlayer1) {
				x = pushableBoxOriginX + 16;
				y = pushableBoxOriginY + 16;
				}
}
		
			if(pushPlayerDIrection == 1)
{
	with(TestPlayer1) {
				x = pushableBoxOriginX - 16;
				y = pushableBoxOriginY;
				}
}
		
			if(pushPlayerDIrection == 2)
{
	with(TestPlayer1) {
				x = pushableBoxOriginX + 16;
				y = pushableBoxOriginY - 28;
				}
}
		
			if(pushPlayerDIrection == 3)
{
	with(TestPlayer1) {
				x = pushableBoxOriginX + 48;
				y = pushableBoxOriginY;
				}
}
}
	}
}
}