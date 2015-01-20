///input_deactivate_InputSetUser()

with( Input)
{
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