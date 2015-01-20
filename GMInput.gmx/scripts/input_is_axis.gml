///input_is_axis(str_axis,{device})

// Checking function arguments and setting defaults.
if( argument_count == 0)
{
    var axis = "left";
    var pad  = 0;
}
else
if( argument_count == 1)
{
    var axis = argument[0];
    var pad  = 0;
}
else
{
    var axis = argument[0];
    var pad  = argument[1];
}

if( axis = "left")
{
    var h_axis = gp_axislh;
    var v_axis = gp_axislv;    
}
else
{
    var h_axis = gp_axisrh;
    var v_axis = gp_axisrv;
}

// Actual function code.
if( (gamepad_axis_value( pad, h_axis) != 0) || (gamepad_axis_value( pad, v_axis) != 0))
{
    return true;    
}
else
{
    return false;
}
