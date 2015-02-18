///_input_config_load(filename)

with(Input)
{
    var __file = file_text_open_read( argument0);
    var __str = "";
    __str = file_text_read_string( __file);
    keymap = json_decode( __str);
    file_text_readln( __file);
    __str = file_text_read_string( __file);
    gpmap = json_decode( __str);
    file_text_close( __file);
}
