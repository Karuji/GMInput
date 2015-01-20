///input_config_save(filename)
with(Input)
{
    var __file = file_text_open_write( argument0);
    var __json = json_encode( keymap);
    file_text_write_string( __file, __json);
    file_text_writeln( __file);
    __json = json_encode( gpmap);
    file_text_write_string( __file, __json);
    file_text_close( __file);
}