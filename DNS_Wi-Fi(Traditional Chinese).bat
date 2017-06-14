@echo off  

rem //設置變數   
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

echo 當前可用操作有：  
echo   1 恢復為 動態 DNS
echo   2 設置 DNS 為 114.114.114.114
echo   .
echo   3 設置為 蘑菇 DNS (1) 失效
echo   4 設置為 蘑菇 DNS (2) 失效
echo   .
echo   5 設置為 Pure DNS (1)
echo   6 設置為 Pure DNS (2)
echo   .
echo   7 設置為 XsicoDNS (1)
echo   8 設置為 XsicoDNS (2)
echo   .
echo   9 設置為 AIXYZ DNS (1)
echo   10設置為 AIXYZ DNS (2)

echo 請選擇後回車：
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
echo 正在設置動態DNS，請稍等...  
ipconfig /flushdns
netsh interface ip set dns name=%NAME% dhcp
echo 恢復動態DNS設置！  
exit


:2
echo 正在設置本地DNS代理，請稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%offical% register=PRIMAR
echo 本地代理已設置！  
exit

:3
echo 正在設置本地DNS代理，請稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%mogu1% register=PRIMAR
echo 本地代理已設置！  
exit

:4
echo 正在設置本地DNS代理，請稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%mogu2% register=PRIMAR
echo 本地代理已設置！  
exit

:5
echo 正在設置本地DNS代理，請稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%pure1% register=PRIMAR
echo 本地代理已設置！  
exit

:6
echo 正在設置本地DNS代理，請稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%pure2% register=PRIMAR
echo 本地代理已設置！  
exit  


:7
echo 正在設置本地DNS代理，請稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%xsico1% register=PRIMAR
echo 本地代理已設置！  
exit


:8
echo 正在設置本地DNS代理，請稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%xsico2% register=PRIMAR
echo 本地代理已設置！  
exit

9:
echo 正在設置本地DNS代理，請稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%aixyz1% register=PRIMAR
echo 本地代理已設置！  
exit

10:
echo 正在設置本地DNS代理，請稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%aixyz2% register=PRIMAR
echo 本地代理已設置！  
exit

