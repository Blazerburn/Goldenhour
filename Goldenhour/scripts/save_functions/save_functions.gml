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
	
	/*if instance_exists(obj_SaveMenu) {
		global.saveSelected = obj_SaveMenu.fileSelected
	}*/
	
	//Get the data from the different savable objects
		
		// Boxes
		for (var i = 0; i < _boxNum; i++) {
			
			var _inst = instance_find(PushableObject, i);
			
			_roomStruct.boxData[i] ={
				x : _inst.x,
				y : _inst.y,
				id : _inst.id,
			}
		}
		
		// Interactables
		for (var i = 0; i < _intNum; i++) {
			var _inst = instance_find(par_speaker, i);
		
			_roomStruct.intData[i] = {
				_choice_variable : _inst.choice_variable,
				_puzzleProgress : _inst.puzzleProgress,
				id : _inst.id,
				x : _inst.x,
				y : _inst.y
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
	if room == RubbleRoom {global.levelData.Sculptor = _roomStruct;};
	if room == StatueRoom {global.levelData.Statue = _roomStruct;};
	if room == StreetRoom3 {global.levelData.RightStreet = _roomStruct;};
	if room == JamboRoom {global.levelData.JamboMeeting = _roomStruct;};
	
	show_debug_message(global.levelData);
	 
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
	if room == RubbleRoom {_roomStruct = global.levelData.Sculptor;};
	if room == StatueRoom {_roomStruct = global.levelData.Statue;};
	if room == StreetRoom3 {_roomStruct = global.levelData.RightStreet;};
	if room == JamboRoom {_roomStruct = global.levelData.JamboMeeting;};
	
	if global.menuOpen = true {
		create_instance_layer(x, y, "Instances", obj_SaveMenu)
		with obj_SaveMenu {
			saving = true;
			selected = 1;
			fileSelected = global.saveSelected;
		}
	}
	
	
	
	// Exit if _roomstruct isn't a struct
	if !is_struct(_roomStruct) {exit;};
	
	// Push Boxes - Get rid of both the boxes and the box spawners
	//Then create new box spawners where the boxes were
	for (var i = 0; i < _roomStruct.boxNum; i++) {
	if instance_exists(PushableObject) {
		layer_destroy_instances("Box");
		//instance_destroy(PushableObject.pathCollision);
		//instance_destroy(PushableObject.pushBoxCollision);
		//instance_destroy(PushableObject);
		}
	};
	///with (PushableObject) {
	//	instance_destroy(pathCollision);
	//	instance_destroy(pushBoxCollision);
	//}
	
	if instance_exists(obj_PushableObjectSpawner) {instance_destroy(obj_PushableObjectSpawner); };
			for (var i = 0; i < _roomStruct.boxNum; i++) {
				instance_create_layer(_roomStruct.boxData[i].x, _roomStruct.boxData[i].y, layer, obj_PushableObjectSpawner)
				show_debug_message(_roomStruct.boxData[i].x);
				show_debug_message(_roomStruct.boxData[i].y);
			}
		
	
	
	// Interactables - Change the variables to what they were
	//if instance_exists(par_speaker) {instance_destroy(par_speaker); };
	
	for (var i = 0; i < _roomStruct.intNum; i++) {
		
		//if !(_roomStruct.intData[i]._choice_variable = "Destroy") {instance_create_layer(_roomStruct.intData[i].x, _roomStruct.intData[i].y, layer, _roomStruct.intData[i].id)}
		with (_roomStruct.intData[i].id) {
			choice_variable = _roomStruct.intData[i]._choice_variable;
			puzzleProgress = _roomStruct.intData[i]._puzzleProgress;
		}
		//if (_roomStruct.intData[i]._choice_variable = "Destroy") {instance_deactivate_object(_roomStruct.intData[i].id);};
		show_debug_message(_roomStruct.intData[i]._choice_variable);
		show_debug_message(_roomStruct.intData[i]._puzzleProgress);
	}
}

// Overall Saving
function save_game(_fileNum = 0)
{
	var _saveArray = array_create(0);
	
	// Save the room you're in
	instance_activate_all();
	save_room();
	
	// Set and save stat related stuff
	global.statData.save_rm = room_get_name(room);
	
	with obj_SaveMenu {
		if fileSelected = 0 {
			global.statData.save_area1 = global.room
			global.statData.save_region1 = global.region
			global.statData.save_area2 = global.area2
			global.statData.save_region2 = global.region2
			global.statData.save_area3 = global.area3
			global.statData.save_region3 = global.region3
		}
		if fileSelected = 1 {
			global.statData.save_area2 = global.room
			global.statData.save_region2 = global.region
			global.statData.save_area1 = global.area1
			global.statData.save_region1 = global.region1
			global.statData.save_area3 = global.area3
			global.statData.save_region3 = global.region3
		}
		if fileSelected = 2 {
			global.statData.save_area3 = global.room
			global.statData.save_region3 = global.region
			global.statData.save_area2 = global.area2
			global.statData.save_region2 = global.region2
			global.statData.save_area1 = global.area1
			global.statData.save_region1 = global.region1
		}
	}
	
	global.area1 = global.statData.save_area1
	global.region1 = global.statData.save_region1
	global.area2 = global.statData.save_area2
	global.region2 = global.statData.save_region2
	global.area3 = global.statData.save_area3
	global.region3 = global.statData.save_region3

	
	global.statData.item_inv = global.inventoryArray;
	
	// Save the save room information
	global.statData.saveroom = global.saveRoom;
	global.statData.savespawnpoint = global.saveSpawnpoint;
	global.statData.savedirection = global.saveDirection;
	global.statData.savedoor = global.saveDoor;
	
	array_push(_saveArray, global.statData);
	
	// Save all the room data
	
	array_push(_saveArray, global.levelData);
	
	show_debug_message("Area 1" + string(global.statData.save_area1))
	show_debug_message("Region 1" + string(global.statData.save_region1))
	show_debug_message("Area 2" + string(global.statData.save_area2))
	show_debug_message("Region 2" + string(global.statData.save_region2))
	
	// Actual saving
	var _filename = "SaveData" + string(_fileNum) + ".sav";
	var _json = json_stringify(_saveArray);
	var _buffer = buffer_create(string_byte_length(_json) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _json)
	
	buffer_save(_buffer, _filename);
	
	buffer_delete(_buffer);
}

function load_game(_fileNum = 0)
{
	// Loading our saved data
	var _filename = "SaveData" + string(_fileNum) + ".sav";
	if !file_exists(_filename) exit;
	
	// Load the buffer, get the JSON, delete the buffer to free memory
	var _buffer = buffer_load(_filename);
	var _json = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer)
	
	// Unstringify and get the data array
	var _loadArray = json_parse(_json);
	
	// Set the data in our game to match our loaded data
	global.statData = array_get(_loadArray, 0);
	global.levelData = array_get(_loadArray, 1);
	
	global.inventoryArray = global.statData.item_inv;
	
	global.statData.save_area1 = global.area1
	global.statData.save_region1 = global.region1
	global.statData.save_area2 = global.area2
	global.statData.save_region2 = global.region2
	global.statData.save_area3 = global.area3
	global.statData.save_region3 = global.region3
	
	// Go to correct room
	var _loadRoom = asset_get_index(global.statData.save_rm);
	room_goto(_loadRoom);
	
	/*// Set the correct area and region variables
	global.room = global.statData.save_area
	global.region = global.statData.save_region
	
	
	
	with obj_SaveMenu {
		if fileSelected = 0 {
			global.room = global.statData.save_area1
			global.region = global.statData.save_region1
		}
		if fileSelected = 1 {
			global.room = global.statData.save_area2
			global.region = global.statData.save_region2
		}
		if fileSelected = 2 {
			global.room = global.statData.save_area3
			global.region = global.statData.save_region3
		}
	}*/
	
	show_debug_message("Area 1" + string(global.statData.save_area1))
	show_debug_message("Region 1" + string(global.statData.save_region1))
	show_debug_message("Area 2" + string(global.statData.save_area2))
	show_debug_message("Region 2" + string(global.statData.save_region2))
	
	// Load the save room information
	global.saveRoom = global.statData.saveroom;
	global.saveSpawnpoint = global.statData.savespawnpoint;
	global.saveDirection = global.statData.savedirection;
	global.saveDoor = global.statData.savedoor;
	
	// Make sure our saveload doesn't save the room we're exiting from
	obj_saveload.skipRoomSave = true;
	TestPlayer.skipInvSave = true;
	
	// Manually load the room
	load_room();
}