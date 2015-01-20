///_input_group_make()
with( Input)
{
    var __name  = argument[0]
    var __term1 = argument[1];
    var __term2 = argument[2];
    show_debug_message(__name);
    
    var __temp = ds_list_create();
    __temp[| 0] = 0;
    __temp[| 1] = __term1;
    __temp[| 2] = __term2;
    
    group[? __name] = __temp;
}