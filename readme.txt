1.  copy files to local path: 
C:\Program Files\IVI Foundation\VISA\Win64\Lib_x64\msc\visa32.lib
C:\Program Files\IVI Foundation\VISA\Win64\Include\visa.h
C:\Program Files (x86)\IVI Foundation\VISA\WinNT\include\visatype.h

2.  then run cmd  in octave: 
        mkoctfile visa_tb_windows_wrap.cc -L.  -lvisa32

3.  check there is a file "visa_tb_windows_wrap.oct" generated.
4.  run you test_script.m  (you should set the instr addr). 