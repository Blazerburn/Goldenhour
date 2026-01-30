///@description change_variable
///@arg obj
///@arg var_name_as_string
///@arg new_value
function change_variable(argument0, argument1, argument2) {

	with(argument0) var oid = id;
	show_debug_message(id);
	show_debug_message(argument1);
	show_debug_message(argument2);
	variable_instance_set(oid, argument1, argument2);


}
