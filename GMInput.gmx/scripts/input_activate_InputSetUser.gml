///input_activate_InputSetUser
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
}