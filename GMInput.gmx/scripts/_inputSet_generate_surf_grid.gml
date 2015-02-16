///_inputSet_generate_surf_grid(INTERNAL)
if( surface_exists( cfg_surf))
{
    surface_free( cfg_surf)
}
var x_size = ds_grid_width( alias_grid);
var y_size = ds_grid_height( alias_grid);
w_surf = x_start*2 + x_buffer*x_size;
h_surf = y_start*2 + y_buffer*y_size;
cfg_surf = surface_create( w_surf, h_surf);
surface_set_target( cfg_surf);

draw_set_halign(fa_left);
for( var i = 0; i < config_size*2; i++)
{    
    for( var j = 0; j < 3; j++)
    {
        if( i == y_selected && j == x_selected +1)
        {
            inputSet_item_selected();
        }
        else
        {
            if( i == y_selected)
            {
                inputSet_line_selected();
            }
            else
            {
                inputSet_line_normal();
            }
        }
    
        draw_text( x_start + j*x_buffer, y_start + i*y_buffer, alias_grid[# j, i]);
    }
}
surface_reset_target();

