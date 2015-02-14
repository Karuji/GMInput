///_inputSet_key_check(ds_map,key)

var __map = argument0;
var __btn = argument1;

var __inv = scr_ds_map_invert( __map);
if( __inv[? __btn] != undefined)
{
    __map[? __inv[? __btn]] = undefined;
}
ds_map_destroy( __inv);

