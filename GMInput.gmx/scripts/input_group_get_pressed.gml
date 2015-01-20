///input_group_get_pressed(str_key)
with( Input)
{
    var __name = argument0 + "_pressed";
    if( group[? __name] != undefined)
    {
        var __list = group[? __name];
        
        return __list[| 0];        
    }
}