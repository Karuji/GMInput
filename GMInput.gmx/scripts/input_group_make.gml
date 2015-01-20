///input_group_make(name,button1,button2,{check},{pressed},{released})
with( Input)
{    
    if( argument_count == 3)
    {
        _input_group_make( argument[0], argument[1], argument[2]);
        _input_group_make_button( argument[0], argument[1], argument[2]);
    }
    
    if( argument_count == 4)
    {
        if( argument[3])
        {
            _input_group_make_button( argument[0], argument[1], argument[2]);
        }
    }
    
    if( argument_count = 5)
    {
        if( argument[3])
        {
            _input_group_make_button( argument[0], argument[1], argument[2]);
        }
        if( argument[4])
        {
            _input_group_make_pressed( argument[0], argument[1], argument[2]);
        }
    }
    
    if( argument_count == 6)
    {
        if( argument[3])
        {
            _input_group_make_button( argument[0], argument[1], argument[2]);
        }
        if( argument[4])
        {
            _input_group_make_pressed( argument[0], argument[1], argument[2]);
        }
        if( argument[5])
        {
            _input_group_make_released( argument[0], argument[1], argument[2]);
        }
    }
        
    
}