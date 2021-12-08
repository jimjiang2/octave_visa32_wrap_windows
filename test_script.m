instid = viopen("TCPIP::192.168.3.84::INSTR");
viwrite(instid, "*idn?")
viread(instid)
viwrite(instid, ":MEAS:freq?")
viread(instid)

%>> mkoctfile visa_tb_windows_wrap.cc -L.  -lvisa32
%>> instid = viopen("TCPIP::192.168.3.84::INSTR");
%visa_init: 0
%visa_open: 0
%Open TCPIP::192.168.3.84::INSTR ok !!
%>> viwrite(instid, "*idn?")
%visa_write: vid 0 - err 0 - actwrite: 5
%ans = 5
%>> viread(instid)
%visa_read: vid 0 - err 0 - actread: 53
%ans = RIGOL TECHNOLOGIES,DS1102Z-E,DS1ZE224512317,00.06.02
%
%>> viwrite(instid, ":MEAS:freq?")
%visa_write: vid 0 - err 0 - actwrite: 11
%ans = 11
%>> viread(instid)
%visa_read: vid 0 - err 0 - actread: 13
%ans = 9.999999e+02
%
%>> 
