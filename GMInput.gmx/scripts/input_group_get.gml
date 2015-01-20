//input_group_get(str_key)
with( Input)
{
    if( group[? argument0] != undefined)
    {
        var __list = group[? argument0];
        
        return __list[| 0];        
    }
}