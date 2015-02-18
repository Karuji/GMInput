///input_axis_check(str_dir,{pad_id},{str_axis})

// Checking function arguments and setting defaults.
if( argument_count == 1)
{
    var __axis = "left";
    var __pad  = 0;
}
else
if( argument_count == 2)
{
    var __axis = "left";
    var __pad  = argument[1];
}
else
{
    var __axis = argument[2];
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

var __dir = argument[0]

if( __dir == "up")
{
    return ( gamepad_axis_value( __pad, __v_axis) < 0);
}
if( __dir == "down")
{
    return ( gamepad_axis_value( __pad, __v_axis) > 0);
}
if( __dir == "left")
{
    return ( gamepad_axis_value( __pad, __h_axis) < 0);
}
if( __dir == "right")
{
    return( gamepad_axis_value( __pad, __h_axis) > 0);
}
return false;
