///input_group_get_state(str_grp)
with( Input)
{
    var __name = argument0 + "_button";
    if( group[? __name] != undefined)
    {
        var __list = group[? __name];
        
        var __check = __list[| 0];
        
        return abs( __check);
    }
}