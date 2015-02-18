///_scr_ds_map_invert(ds_map)

var __map  = argument0;
var __temp = ds_map_create();
var __size = ds_map_size( __map);
var __key  = ds_map_find_first( __map);

for( var i = 0; i < __size; i++)
{
    var __val = __map[? __key];
    __temp[? __val] = __key;
    __key = ds_map_find_next( __map, __key);    
}

return __temp;
