///_input_gamepad_connect(pad_index)
with( Input)
{
    var __pad = argument0;
    gamepad_set_axis_deadzone( __pad, 0.25);
    gamepad_set_button_threshold( __pad, 0.1);
    gp_count++;
    ds_list_add( gp_active, __pad);
    gpad[ __pad] = __pad;
    
    var __axis = ds_map_create();
    __axis[? "check"] = false;
    __axis[? "pressed"] = false;
    __axis[? "released"] = false;
    axis_maps[? __pad] = __axis;
}
