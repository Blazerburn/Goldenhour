function goto_room(_room, _spawn, _direction){
	room_goto(_room)
	global.RoomSpawnpoints = _spawn
	global.startPlayerDirection = _direction
}