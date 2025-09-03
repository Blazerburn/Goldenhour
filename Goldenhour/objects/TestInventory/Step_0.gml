/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 122E894A
/// @DnDInput : 4
/// @DnDArgument : "var" "inventoryItemX"
/// @DnDArgument : "value" "rowPos * 280"
/// @DnDArgument : "var_1" "inventoryItemY"
/// @DnDArgument : "value_1" "colPos * 301"
/// @DnDArgument : "var_2" "_xx"
/// @DnDArgument : "value_2" "101"
/// @DnDArgument : "var_3" "_yy"
/// @DnDArgument : "value_3" "101"
var inventoryItemX = rowPos * 280;
var inventoryItemY = colPos * 301;
var _xx = 101;
var _yy = 101;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 04712DD3
/// @DnDInput : 2
/// @DnDApplyTo : {InventorySelectObject}
/// @DnDArgument : "value" "_xx + inventoryItemX"
/// @DnDArgument : "value_1" "_yy + inventoryItemY"
/// @DnDArgument : "instvar_1" "1"
with(InventorySelectObject) {
x = _xx + inventoryItemX;
y = _yy + inventoryItemY;
}