///scr_group_get_released(str_key)
with( Input)
{
    var __name = argument0 + "_released";
    if( group[? __name] != undefined)
    {
        var __list = group[? __name];
        
        return __list[| 0];        
    }
}