///_input_group_make_released
with( Input)
{
    var __rname = argument[0] + "_released";
    show_debug_message( __rname)
    ds_list_add( group_released, __rname);
    _input_group_make( __rname, argument[1], argument[2]);
}