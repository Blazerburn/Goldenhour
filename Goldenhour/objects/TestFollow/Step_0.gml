/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7FD40F14
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)with (TestPlayer) {$(13_10)	// number of steps the player made so far$(13_10)	var steps_count = array_length(follow_coords) - 1;$(13_10)	var follow_index = steps_count >= other.follow_delay ? steps_count - other.follow_delay : 0;$(13_10)	$(13_10)	var coords = follow_coords[follow_index];$(13_10)	other.x = coords.x;$(13_10)	other.y = coords.y;$(13_10)	other.playerDirection = coords.playerDirection;$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)if (global.playerMoving = 0) {$(13_10)	sprite_index = dir_sprites[playerDirection];$(13_10)}$(13_10)$(13_10)else if (global.playerMoving = 1) {$(13_10)	sprite_index = dir_movingSprites[playerDirection];$(13_10)	}$(13_10)"
/// @description Execute Code
with (TestPlayer) {
	// number of steps the player made so far
	var steps_count = array_length(follow_coords) - 1;
	var follow_index = steps_count >= other.follow_delay ? steps_count - other.follow_delay : 0;
	
	var coords = follow_coords[follow_index];
	other.x = coords.x;
	other.y = coords.y;
	other.playerDirection = coords.playerDirection;

}



if (global.playerMoving = 0) {
	sprite_index = dir_sprites[playerDirection];
}

else if (global.playerMoving = 1) {
	sprite_index = dir_movingSprites[playerDirection];
	}