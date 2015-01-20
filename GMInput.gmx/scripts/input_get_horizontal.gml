///input_get_horizontal()
with( Input)
{
    if( input_get_key("left") && input_get_key("right"))
    {
        return 0;
    }
    else
    if( input_get_key("left"))
    {
        return -1;
    }
    else
    if( input_get_key("right"))
    {
        return 1;
    }
    else
    {
        return 0;
    }
}