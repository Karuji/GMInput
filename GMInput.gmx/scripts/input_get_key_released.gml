///input_get_key_released(str_key_id,{device})
with(Input)
{
    if( argument_count == 1)
    {
        var __str = argument[0];
        var __pad = 0;
    }
    else
    {
        var __str = argument[0];
        var __pad = argument[1];
    }
    // Use result to check generic button on controller.
    var result = false;
    // Only check controller if there is one
    if( gp_count > 0)
    {
        var __button = gpmap[? __str];
        if( __button != undefined)
        {
            // Need to update this to work on any controller.
            result = gamepad_button_check_released( __pad, __button);
            
            if( !result)
                {
                    __button = gpmapalt[? __str];
                    if( __button != undefined)
                    {
                        result = gamepad_button_check_pressed( __pad, __button);
                    }
                }
        }
    }
    
    // Result is initialized to false so if there is no controller,
    // or input from the controller we check and return the keyboard.
        if( result)
    {
        return result;
    }
    else
    {
        var __key = keymap[? __str];
        
        if( __key != undefined)
        {
            result = keyboard_check_released( __key);
            
            if( result)
            {
                return result;
            }
            else
            {
                __key = keymapalt[? __str]
                
                if( __key == undefined)
                {
                    return false;
                }
                else
                {
                    return keyboard_check_released( __key);
                }
            }
        }
    }
}
