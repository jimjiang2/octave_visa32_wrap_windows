function msg = viread(vid,read_length=1000)     
     msg = visa_tb_windows_wrap(2,vid,read_length);
end
