///input_is_reserved_key(key)

with(Input)
{
    var __key = argument0;
    var __size = ds_list_size( reserved_keys);
    for( var i = 0; i < __size; i++)
    {
        if( reserved_keys[| i] == __key)
        {
            return true;
        }
    }
    
    return false;
}