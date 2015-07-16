///_inputSet_key_check(key,ds_map,ds_map_alt)

var __btn = argument0;
var __map = argument1;
var __alt = argument2;

if( !_input_is_reserved_key( __btn))
{
    _inputSet_key_clean( __btn, __map);
    _inputSet_key_clean( __btn, __alt);
    return true;
}
return false;
