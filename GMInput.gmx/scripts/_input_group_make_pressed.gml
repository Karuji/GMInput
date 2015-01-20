///_input_group_make_pressed()
with( Input)
{
    var __pname = argument[0] + "_pressed";
    show_debug_message( __pname)
    ds_list_add( group_pressed, __pname);
    _input_group_make( __pname, argument[1], argument[2]);
}