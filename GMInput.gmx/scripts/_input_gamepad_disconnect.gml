///_input_gamepad_disconnect(pad_index)
with( Input)
{
    var __pad = argument0;
    gp_count--;
    ds_list_delete( gp_active, ds_list_find_index( gp_active, __pad));
    gpad[ __pad] = noone;
    if( gp_count < 0)
    {
        gp_count = 0;
    }
    var __axis = axis_maps[? __pad];
    ds_map_destroy( __axis);
}
