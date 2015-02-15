///_inputSet_generate_surf_grid
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
    
        draw_text( 32 + j*128, 32 + i*32, alias_grid[# j, i]);
    }
}
