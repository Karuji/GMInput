///input_axis_released(str_dir,{pad_id},{str_axis})
with( Input)
{
    if( argument_count == 1)
    {
        var __axis = "left";
        var __pad  = 0;
    }
    else
    if( argument_count == 2)
    {
        var __axis = argument[1];
        var __pad  = 0;
    }
    else
    {
        var __axis = argument[1];
        var __pad  = argument[2];
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
    if( __dir == "up" || __dir == "down")
    {
        var __last = axis_last[? __v_axis]
    }
    else
    {
        var __last = axis_last[? __h_axis]
    }
    
    
    if( __dir == "up")
    {
        if( _input_unit_dir( __last[__pad]) != _input_unit_dir( gamepad_axis_value( __pad, __v_axis)))
        {
            return ( gamepad_axis_value( __pad, __v_axis) = 0);
        }
        return false;
    }
    if( __dir == "down")
    {
        if( _input_unit_dir( __last[__pad]) != _input_unit_dir( gamepad_axis_value( __pad, __v_axis)))
        {
            return ( gamepad_axis_value( __pad, __v_axis) = 0);
        }
        return false;
    }
    if( __dir == "left")
    {
        if( _input_unit_dir( __last[__pad]) != _input_unit_dir( gamepad_axis_value( __pad, __h_axis)))
        {
            return ( gamepad_axis_value( __pad, __h_axis) = 0);
        }
        return false;
    }
    if( __dir == "right")
    {
        if( _input_unit_dir( __last[__pad]) != _input_unit_dir( gamepad_axis_value( __pad, __h_axis)))
        {
            return ( gamepad_axis_value( __pad, __h_axis) = 0);
        }
        return false;
    }
    return false;
}
