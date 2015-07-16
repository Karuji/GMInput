///_inputSet_key_clean(key,ds_map)
var __key = argument0;
var __dsm = argument1;
var __inv = _input_ds_map_invert( __dsm);
if( __inv[? __key] != undefined)
{
    __dsm[? __inv[? __key]] = undefined;
}
ds_map_destroy( __inv);
