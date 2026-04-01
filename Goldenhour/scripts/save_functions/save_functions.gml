// Room Saving

function save_room()
{
	
	// Get the interactables in the room
	/*var _interactables = (
	tag_get_asset_ids("Interactable", asset_object)
		);*/
		
		//show_debug_message(_interactables);
	// Number of interactables
	var _intNum = instance_number(par_speaker);

	// Box saving
	var _boxNum = instance_number(PushableObject);
	
	var _roomStruct =
	{
		// Boxes
		boxNum : _boxNum,
		boxData : array_create(_boxNum),
		
		// Interactables
		intNum : _intNum,
		intData : array_create(_intNum),
	}
	
	//Get the data from the different savable objects
		
		// Boxes
		for (var i = 0; i < _boxNum; i++) {
			
			var _inst = instance_find(PushableObject, i);
			
			_roomStruct.boxData[i] ={
				x : _inst.x,
				y : _inst.y,
			}
		}
		
		// Interactables
		for (var i = 0; i < _intNum; i++) {
			var _inst = instance_find(par_speaker, i);
		
			_roomStruct.intData[i] = {
				_choice_variable : _inst.choice_variable,
				_puzzleProgress : _inst.puzzleProgress,
				id : _inst.id
			}
			show_debug_message(_roomStruct.intData[i]._choice_variable);
			show_debug_message(_roomStruct.intData[i]._puzzleProgress);
		}
		
		
	//Store the room specific struct in global.levelData's variable meant for that level
	if room == PuzzleRoom1 {global.levelData.Puzzle1 = _roomStruct;};
	if room == PuzzleRoom2 {global.levelData.Puzzle2 = _roomStruct;};
	if room == PuzzleRoom3 {global.levelData.Puzzle3 = _roomStruct;};
	if room == PuzzleRoom4 {global.levelData.Puzzle4 = _roomStruct;};
	if room == PuzzleRoom5 {global.levelData.Puzzle5 = _roomStruct;};
	if room == PuzzleRoom6 {global.levelData.Puzzle6 = _roomStruct;};
	if room == BarRoom {global.levelData.RuinsBar = _roomStruct;};
	if room == ChurchRoom2 {global.levelData.Mosaic = _roomStruct;};
	if room == CoreRoom {global.levelData.RuinsCore = _roomStruct;};
	if room == HideoutRoom1 {global.levelData.HideoutTop = _roomStruct;};
	if room == HideoutRoom2 {global.levelData.HideoutBasement = _roomStruct;};
	if room == ParkRoom {global.levelData.Park = _roomStruct;};
	if room == PrincesRoom2 {global.levelData.PrinceBedroom = _roomStruct;};
	if room == RubbleRoom {global.levelData.Rubble = _roomStruct;};
	if room == StatueRoom {global.levelData.Statue = _roomStruct;};
	if room == StreetRoom3 {global.levelData.RightStreet = _roomStruct;};
	 
}


function load_room()
{
	var _roomStruct = 0;
	
	// Get the correct struct for the room you're in
	if room == PuzzleRoom1 {_roomStruct = global.levelData.Puzzle1;};
	if room == PuzzleRoom2 {_roomStruct = global.levelData.Puzzle2;};
	if room == PuzzleRoom3 {_roomStruct = global.levelData.Puzzle3;};
	if room == PuzzleRoom4 {_roomStruct = global.levelData.Puzzle4;};
	if room == PuzzleRoom5 {_roomStruct = global.levelData.Puzzle5;};
	if room == PuzzleRoom6 {_roomStruct = global.levelData.Puzzle6;};
	if room == BarRoom {_roomStruct = global.levelData.RuinsBar;};
	if room == ChurchRoom2 {_roomStruct = global.levelData.Mosaic;};
	if room == CoreRoom {_roomStruct = global.levelData.RuinsCore;};
	if room == HideoutRoom1 {_roomStruct = global.levelData.HideoutTop;};
	if room == HideoutRoom2 {_roomStruct = global.levelData.HideoutBasement;};
	if room == ParkRoom {_roomStruct = global.levelData.Park;};
	if room == PrincesRoom2 {_roomStruct = global.levelData.PrinceBedroom;};
	if room == RubbleRoom {_roomStruct = global.levelData.Rubble;};
	if room == StatueRoom {_roomStruct = global.levelData.Statue;};
	if room == StreetRoom3 {_roomStruct = global.levelData.RightStreet;};
	
	
	
	// Exit if _roomstruct isn't a struct
	if !is_struct(_roomStruct) {exit;};
	
	// Push Boxes - Get rid of both the boxes and the box spawners
	//Then create new box spawners where the boxes were
	if instance_exists(PushableObject.pathCollision) {instance_destroy(PushableObject.pathCollision); };
	if instance_exists(PushableObject.pushBoxCollision) {instance_destroy(PushableObject.pushBoxCollision); };
	if instance_exists(PushableObject) {instance_destroy(PushableObject); };
	if instance_exists(PushableObjectSpawner) {instance_destroy(PushableObjectSpawner); };
	for (var i = 0; i < _roomStruct.boxNum; i++) {
		instance_create_layer(_roomStruct.boxData[i].x, _roomStruct.boxData[i].y, layer, PushableObjectSpawner)
	}
	
	// Interactables - Change the variables to what they were
	for (var i = 0; i < _roomStruct.intNum; i++) {
		with (_roomStruct.intData[i].id) {
			choice_variable = _roomStruct.intData[i]._choice_variable;
			puzzleProgress = _roomStruct.intData[i]._puzzleProgress;
		}
		show_debug_message(_roomStruct.intData[i]._choice_variable);
		show_debug_message(_roomStruct.intData[i]._puzzleProgress);
	}
}