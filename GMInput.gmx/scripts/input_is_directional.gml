///input_is_directional()
with( Input)
{
    if( input_get_key("up") || input_get_key("down") || input_get_key("left") || input_get_key("right"))
    {
        return true;
    }
    else
    {
        return false;
    }
}