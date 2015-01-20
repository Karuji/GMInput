///input_lefty_flip()
with( Input)
{
    var __inverse = scr_ds_map_invert( keymap);    
    var __size = ds_list_size( dir_l);
    
    for( var i = 0; i < __size; i++)
    {
        if( __inverse[? dir_l[| i]] != undefined)
        {
            keymap[? __inverse[? dir_l[| i]]] = dir_r[| i];
        }
    }
    
    for( var i = 0; i < __size; i++)
    {
        if( __inverse[? dir_r[| i]] != undefined)
        {
            keymap[? __inverse[? dir_r[| i]]] = dir_l[| i];
        }
    }
    
    ds_map_destroy( __inverse);
}