// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_item(_pos, _type, _sprite, _name, _uses){
with(TestPlayer)
{
	while ((_pos < 9)) {
		if(itemArray[_pos][itemType] == _type)
{
	break;
}
	
		else
{
	_pos += 1;
}
	}

	if(_pos > 8)
{
	_pos = 0;
	
		while ((_pos < 9)) {
			if(itemArray[_pos][itemType] == itemNone)
{
	break;
}
		
			else
{
	_pos += 1;
}
		}
}

	if(_pos < 9)
{
	itemArray[_pos][itemType] = _type;
		itemArray[_pos][itemSprite] = _sprite;
		itemArray[_pos][itemAmount] += 1;
		itemArray[_pos][itemName] = _name;
		itemArray[_pos][itemUses] = _uses;
	
		show_debug_message(string("Put item down") + @"
		" + string(_pos));
}
}
}