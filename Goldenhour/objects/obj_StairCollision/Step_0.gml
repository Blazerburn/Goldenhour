/*if (place_meeting(x, y, TestPlayer)) {
	collision = true;
	//show_debug_message("Colliding")
}
else  { collision = false;}*/

if (rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, TestPlayer.bbox_left+8, TestPlayer.bbox_top, TestPlayer.bbox_right-8, TestPlayer.bbox_bottom)) {
	collision = true;
	//show_debug_message("Colliding")
}
else  { collision = false;}


if collision = true {
	if activated = false {
		if movingUp = "Up" {
			if TestPlayer.playerDirection = 0 {
				TestPlayer.y -= heightChange
				activated = true;
				show_debug_message("Moved up")
			}
		}
		else if movingUp = "Right" {
			if TestPlayer.playerDirection = 1 {
				TestPlayer.y -= heightChange
				activated = true;
				show_debug_message("Moved up")
			}
		}
		else if movingUp = "Down" {
			if TestPlayer.playerDirection = 2 {
				TestPlayer.y -= heightChange
				activated = true;
				show_debug_message("Moved up")
			}
		}
		else if movingUp = "Left" {
			if TestPlayer.playerDirection = 3 {
				TestPlayer.y -= heightChange
				activated = true;
				show_debug_message("Moved up")
			}
		}
	}
	if activated = true {
		if movingUp = "Up" {
			if TestPlayer.playerDirection = 2 {
				TestPlayer.y += heightChange
				activated = false;
				show_debug_message("Moved down")
			}
		}
		else if movingUp = "Right" {
			if TestPlayer.playerDirection = 3 {
				TestPlayer.y += heightChange
				activated = false;
				show_debug_message("Moved down")
			}
		}
		else if movingUp = "Down" {
			if TestPlayer.playerDirection = 0 {
				TestPlayer.y += heightChange
				activated = false;
				show_debug_message("Moved down")
			}
		}
		else if movingUp = "Left" {
			if TestPlayer.playerDirection = 1 {
				TestPlayer.y += heightChange
				activated = false;
				show_debug_message("Moved down")
			}
		}
	}
}