@echo off  

rem //���ñ���   
set NAME="WIFI"  
set offical=114.114.114.114
set mogu1=115.159.96.69
set mogu2=122.114.245.45
set pure1=123.207.137.88
set pure2=115.159.220.214
set xsico1=115.159.157.26
set xsico2=115.159.158.38
echo ��ǰ���ò����У�  
echo   1 �ָ�Ϊ ��̬ DNS
echo   2 ���� DNS Ϊ 114.114.114.114
echo   .
echo   3 ����Ϊ Ģ�� DNS (1)
echo   4 ����Ϊ Ģ�� DNS (2)
echo   .
echo   5 ����Ϊ Pure DNS (1)
echo   6 ����Ϊ Pure DNS (2)
echo   .
echo   7 ����Ϊ XsicoDNS (1)
echo   8 ����Ϊ XsicoDNS (2)
echo   .
echo ��ѡ���س���
set /p operate=  
if %operate%==1 goto 1 
if %operate%==2 goto 2  
if %operate%==3 goto 3  
if %operate%==4 goto 4  
if %operate%==5 goto 5  
if %operate%==6 goto 6  
if %operate%==7 goto 7  
if %operate%==8 goto 8  

:1 
echo �������ö�̬DNS�����Ե�...  
ipconfig /flushdns
netsh interface ip set dns name=%NAME% dhcp
echo �ָ���̬DNS���ã�  
pause  
  

:2

echo �������ñ���DNS�������Ե�...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%offical% register=PRIMAR
echo ���ش��������ã�  
pause  


:3
 
echo �������ñ���DNS�������Ե�...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%mogu1% register=PRIMAR
echo ���ش��������ã�  
pause  

:4

echo �������ñ���DNS�������Ե�...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%mogu2% register=PRIMAR
echo ���ش��������ã�  
pause  

:5
 
echo �������ñ���DNS�������Ե�...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%pure1% register=PRIMAR
echo ���ش��������ã�  
pause  

:6
echo �������ñ���DNS�������Ե�...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%pure2% register=PRIMAR
echo ���ش��������ã�  
pause  


:7
echo �������ñ���DNS�������Ե�...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%xsico1% register=PRIMAR
echo ���ش��������ã�  
pause  


:8
 
echo �������ñ���DNS�������Ե�...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%xsico2% register=PRIMAR
echo ���ش��������ã�  
pause  


  
