with( Input)
{
    if( argument_count == 0)
    {
        var __device = 0;
    }
    else
    {
        var __device = argument[0];
    }
    
    gp_last[ __device] = 0;
}