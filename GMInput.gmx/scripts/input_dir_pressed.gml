///input_dir_pressed(str_dir,{device})
if( argument_count == 1)
{
    __str = argument[0];
    __pad = 0;
}
if( argument_count ==2)
{
    __str = argument[0];
    __pad = argument[1];
}

if( input_axis_pressed( __str, __pad))
{
    return true;
}
return( input_get_key_pressed( __str, __pad));

