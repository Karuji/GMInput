///input_is_axis(str_axis,{device})

// Checking function arguments and setting defaults.
if( argument_count == 0)
{
    var __axis = "left";
    var __pad  = 0;
}
else
if( argument_count == 1)
{
    var __axis = argument[0];
    var __pad  = 0;
}
else
{
    var __axis = argument[0];
    var __pad  = argument[1];
}

if( __axis = "left")
{
    var __h_axis = gp_axislh;
    var __v_axis = gp_axislv;    
}
else
{
    var __h_axis = gp_axisrh;
    var __v_axis = gp_axisrv;
}

// Actual function code.
if( (gamepad_axis_value( __pad, __h_axis) != 0) 
|| (gamepad_axis_value( __pad, __v_axis) != 0))
{
    return true;    
}
else
{
    return false;
}