///input_get_vertical()
with( Input)
{
    if( input_get_key("up") && input_get_key("down"))
    {
        return 0;
    }
    else
    if( input_get_key("up"))
    {
        return -1;
    }
    else
    if( input_get_key("down"))
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
