//input_toggle_InputSetUser()

with( Input)
{
    if( current_state == state.normal)
    {
        current_state = state.new_input;
        
        if( !instance_exists( InputUserSet))
        {
            instance_create( -1, -1, InputUserSet);
        }
    }
    else
    if( current_state = state.new_input)
    {
        current_state = state.normal;
        
        if( instance_exists( InputUserSet))
        {
            with( InputUserSet)
            {
                instance_destroy();
            }
        }
    }
}