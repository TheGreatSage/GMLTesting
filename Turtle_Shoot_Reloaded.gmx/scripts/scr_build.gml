var bld;


if DevMode && file_exists('build.sge') { 
    
    bld = file_text_open_read('build.sge');
    var i;
    for (i=0;i!=3;i++) {
        if i == 0 {version=file_text_read_real(bld); file_text_readln(bld);}
        if i == 1 {build=file_text_read_real(bld); file_text_readln(bld);}
        if i == 2 {dev=file_text_read_real(bld);}
    }
    file_text_close(bld);
    bld = file_text_open_write('build.sge');
    var i;
    for (i=0;i!=3;i++) {
        if i == 0 {file_text_write_real(bld, version); file_text_writeln(bld);}
        if i == 1 {file_text_write_real(bld, build); file_text_writeln(bld);}
        if i == 2 {file_text_write_real(bld, dev+1); dev+=1;}
    }
    file_text_close(bld);
} else {
    bld = file_text_open_read('build.sge');
    var i;
    for (i=0;i!=3;i++) {
        if i == 0 {version=file_text_read_real(bld); file_text_readln(bld);}
        if i == 1 {build=file_text_read_real(bld); file_text_readln(bld);}
        if i == 2 {dev=file_text_read_real(bld);}
    }
    file_text_close(bld);
}
