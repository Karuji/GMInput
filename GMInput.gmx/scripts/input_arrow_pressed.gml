///input_arrow_pressed()

with( Input)
{
    var __size = ds_list_size( dir_r);
    
    for( var i = 0; i < __size; i++)
    {
        if( keyboard_check_pressed( dir_r[| i]))
        {
            return true;
        }
    }
    return false;
}