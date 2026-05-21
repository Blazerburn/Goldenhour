/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("1")) { room_goto(InfiniteRoom)};
if keyboard_check_pressed(ord("2")) { room_goto(StreetRoom1)};
if keyboard_check_pressed(ord("3")) { room_goto(ChurchRoom1)};

if keyboard_check(ord("4")) { load_game(0) };
if keyboard_check(ord("5")) { load_game(1) };
if keyboard_check(ord("6")) { load_game(2) };
