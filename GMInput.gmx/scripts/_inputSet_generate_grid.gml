///_inputSet_generate_grid(INTERNAL)

for( var i = 0; i < config_size; i++)
{
    alias_grid[# 0, i] = Input.input_alias[| i];
    alias_grid[# 1, i] = keyname[? Input.keymap[? alias_grid[# 0, i]]];
    alias_grid[# 2, i] = keyname[? Input.keymapalt[? alias_grid[# 0, i]]];
}

for( var i = config_size; i < config_size*2; i++)
{
    alias_grid[# 0, i] = Input.input_alias[| i - config_size];
    alias_grid[# 1, i] = gp_alias[? Input.gpmap[? alias_grid[# 0, i]]];
    alias_grid[# 2, i] = gp_alias[? Input.gpmapalt[? alias_grid[# 0, i]]];
}