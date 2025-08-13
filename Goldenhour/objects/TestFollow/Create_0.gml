/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7D6EABC5
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// THANK YOU TO ALICE ON THE GAMEMAKER FORUMS FOR THE FOLLOWER CODE!$(13_10)playerDirection = 2;$(13_10)$(13_10)dir_sprites = [$(13_10)	JamboBackwardIdle,$(13_10)    JamboRightIdle,$(13_10)	JamboForwardIdle,$(13_10)	JamboLeftIdle,$(13_10)];$(13_10)dir_movingSprites = [$(13_10)	JamboBackwardWalking,$(13_10)    JamboRightWalking,$(13_10)	JamboForwardWalking,$(13_10)	JamboLeftWalking,$(13_10)];$(13_10)$(13_10)// this variable is to be set via instance_create_* parameters$(13_10)// adding this here so that Feather recognises it as obj_follower variable$(13_10)follow_delay = self[$ "follow_delay"];$(13_10)"
/// @description Execute Code
// THANK YOU TO ALICE ON THE GAMEMAKER FORUMS FOR THE FOLLOWER CODE!
playerDirection = 2;

dir_sprites = [
	JamboBackwardIdle,
    JamboRightIdle,
	JamboForwardIdle,
	JamboLeftIdle,
];
dir_movingSprites = [
	JamboBackwardWalking,
    JamboRightWalking,
	JamboForwardWalking,
	JamboLeftWalking,
];

// this variable is to be set via instance_create_* parameters
// adding this here so that Feather recognises it as obj_follower variable
follow_delay = self[$ "follow_delay"];