///_input_group_make_button()
with( Input)
{
    var __bname = argument[0] + "_button";
    show_debug_message( __bname);
    ds_list_add( group_button, __bname);
    _input_group_make( __bname, argument[1], argument[2]);
}
