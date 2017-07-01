@echo off  

rem //Set the variable     
set NAME="Wi-Fi"  
set local=127.0.0.1
set offical=114.114.114.114
set mogu1=115.159.96.69
set mogu2=122.114.245.45
set pure1=123.207.137.88
set pure2=115.159.220.214
set xsico1=115.159.157.26
set xsico2=115.159.158.38
set aixyz1=115.159.146.99
set aixyz2=123.206.21.48

echo Currently available operation¡G  
echo   1  Set as localhost
echo   2  Set as 114.114.114.114
echo   .
echo   3  Set as Mogu DNS (1) Failure
echo   4  Set as Mogu DNS (2) Failure
echo   .
echo   5  Set as Pure DNS (1)
echo   6  Set as Pure DNS (2)
echo   .
echo   7  Set as XsicoDNS (1)
echo   8  Set as XsicoDNS (2)
echo   .
echo   9  Set as AIXYZ DNS (1)
echo   10 Set as AIXYZ DNS (2)

echo After you select Enter¡G
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
echo Setting up local DNS , please wait...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%local% register=PRIMAR
echo Local DNS is set up!  
exit

:2
echo Setting up local DNS , please wait...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%offical% register=PRIMAR
echo Local DNS is set up!  
exit

:3
echo Setting up local DNS , please wait...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%mogu1% register=PRIMAR
echo Local DNS is set up!  
exit

:4
echo Setting up local DNS , please wait...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%mogu2% register=PRIMAR
echo Local DNS is set up!  
exit

:5
echo Setting up local DNS , please wait...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%pure1% register=PRIMAR
echo Local DNS is set up!  
exit

:6
echo Setting up local DNS , please wait...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%pure2% register=PRIMAR
echo Local DNS is set up!  
exit  


:7
echo Setting up local DNS , please wait...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%xsico1% register=PRIMAR
echo Local DNS is set up!  
exit


:8
echo Setting up local DNS , please wait...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%xsico2% register=PRIMAR
echo Local DNS is set up!  
exit

9:
echo Setting up local DNS , please wait...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%aixyz1% register=PRIMAR
echo Local DNS is set up!  
exit

10:
echo Setting up local DNS , please wait...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%aixyz2% register=PRIMAR
echo Local DNS is set up!  
exit

