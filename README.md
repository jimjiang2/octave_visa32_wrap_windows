# octave_visa32_wrap_windows
This is a guide to wrap NI visa32.dll (lib) in octave on Windows10 PC  for instrument control .

I have try it and compile a .oct file , then it works on windows octave.
the log is like this:

four base functions are working well !
 ---------------------LOG begin : ----------------------------
>> instid = viopen("TCPIP::192.168.3.84::INSTR");
visa_init: 0
visa_open: 0
Open TCPIP::192.168.3.84::INSTR ok !!
>> viwrite(instid, "*idn?")
visa_write: vid 0 - err 0 - actwrite: 5
ans = 5
>> viread(instid)
visa_read: vid 0 - err 0 - actread: 53
ans = RIGOL TECHNOLOGIES,DS1102Z-E,DS1ZE224512317,00.06.02

>> viwrite(instid, ":MEAS:freq?")
visa_write: vid 0 - err 0 - actwrite: 11
ans = 11
>> viread(instid)
visa_read: vid 0 - err 0 - actread: 13
ans = 9.999999e+02
 ---------------------LOG  Done ----------------------------


#################################################################################################
below is something need to install: 
1. install NI visa32 ,  my version is download from "RIGOL TECHNOLOGIES" https://www.rigolna.com/products/digital-oscilloscopes/1000z/ find  "UltraSigma Instrument Connectivity Driver" 

2. octave Version: https://ftpmirror.gnu.org/octave/windows/octave-6.4.0-w64-installer.exe octave-6.4.0-w64-installer.exe 

3. open need file to local octave path:  
  ![image](https://user-images.githubusercontent.com/7239489/145222599-5e09e38a-8f78-4ec7-85f1-ced553006c27.png)
  visa.h , visatype.h , and visa32.lib file ( Note：  that there is a 64 bit and 32bits version of visa32..... ) 
  ![image](https://user-images.githubusercontent.com/7239489/145223125-5e05daa9-280f-4181-bb03-74d77386c8b7.png)
  this one is ok. 

4. in octave gui ,run cmd: 
   mkoctfile visa_tb_windows_wrap.cc -L.  -lvisa32

5. then you will see a "visa_tb_windows_wrap.oct" file .
   try to modify test_script.m do you own test!!!
   
  instid = viopen("TCPIP::192.168.3.84::INSTR");
  viwrite(instid, "*idn?")
  viread(instid)
  viwrite(instid, ":MEAS:freq?")
  viread(instid)




