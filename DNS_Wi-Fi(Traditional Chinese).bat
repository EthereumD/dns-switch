@echo off  

rem //�]�m�ܼ�   
set NAME="Wi-Fi"  
set offical=114.114.114.114
set mogu1=115.159.96.69
set mogu2=122.114.245.45
set pure1=123.207.137.88
set pure2=115.159.220.214
set xsico1=115.159.157.26
set xsico2=115.159.158.38
set aixyz1=115.159.146.99
set aixyz2=123.206.21.48

echo ��e�i�ξާ@���G  
echo   1 ��_�� �ʺA DNS
echo   2 �]�m DNS �� 114.114.114.114
echo   .
echo   3 �]�m�� Ĩۣ DNS (1) ����
echo   4 �]�m�� Ĩۣ DNS (2) ����
echo   .
echo   5 �]�m�� Pure DNS (1)
echo   6 �]�m�� Pure DNS (2)
echo   .
echo   7 �]�m�� XsicoDNS (1)
echo   8 �]�m�� XsicoDNS (2)
echo   .
echo   9 �]�m�� AIXYZ DNS (1)
echo   10�]�m�� AIXYZ DNS (2)

echo �п�ܫ�^���G
set /p operate=  
if %operate%==1 goto 1 
if %operate%==2 goto 2  
if %operate%==3 goto 3  
if %operate%==4 goto 4  
if %operate%==5 goto 5  
if %operate%==6 goto 6  
if %operate%==7 goto 7  
if %operate%==8 goto 8  
if %operate%==9 goto 9  
if %operate%==10 goto 10  

:1 
echo ���b�]�m�ʺADNS�A�еy��...  
ipconfig /flushdns
netsh interface ip set dns name=%NAME% dhcp
echo ��_�ʺADNS�]�m�I  
exit


:2
echo ���b�]�m���aDNS�N�z�A�еy��...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%offical% register=PRIMAR
echo ���a�N�z�w�]�m�I  
exit

:3
echo ���b�]�m���aDNS�N�z�A�еy��...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%mogu1% register=PRIMAR
echo ���a�N�z�w�]�m�I  
exit

:4
echo ���b�]�m���aDNS�N�z�A�еy��...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%mogu2% register=PRIMAR
echo ���a�N�z�w�]�m�I  
exit

:5
echo ���b�]�m���aDNS�N�z�A�еy��...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%pure1% register=PRIMAR
echo ���a�N�z�w�]�m�I  
exit

:6
echo ���b�]�m���aDNS�N�z�A�еy��...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%pure2% register=PRIMAR
echo ���a�N�z�w�]�m�I  
exit  


:7
echo ���b�]�m���aDNS�N�z�A�еy��...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%xsico1% register=PRIMAR
echo ���a�N�z�w�]�m�I  
exit


:8
echo ���b�]�m���aDNS�N�z�A�еy��...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%xsico2% register=PRIMAR
echo ���a�N�z�w�]�m�I  
exit

9:
echo ���b�]�m���aDNS�N�z�A�еy��...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%aixyz1% register=PRIMAR
echo ���a�N�z�w�]�m�I  
exit

10:
echo ���b�]�m���aDNS�N�z�A�еy��...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%aixyz2% register=PRIMAR
echo ���a�N�z�w�]�m�I  
exit

