@echo off  

rem //设置变数   
set NAME="WIFI"  
set offical=114.114.114.114
set mogu1=115.159.96.69
set mogu2=122.114.245.45
set pure1=123.207.137.88
set pure2=115.159.220.214
set xsico1=115.159.157.26
set xsico2=115.159.158.38
echo 当前可用操作有：  
echo   1 恢复为 动态 DNS
echo   2 设置 DNS 为 114.114.114.114
echo   .
echo   3 设置为 蘑菇 DNS (1)
echo   4 设置为 蘑菇 DNS (2)
echo   .
echo   5 设置为 Pure DNS (1)
echo   6 设置为 Pure DNS (2)
echo   .
echo   7 设置为 XsicoDNS (1)
echo   8 设置为 XsicoDNS (2)
echo   .
echo 请选择后回车：
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
echo 正在设置动态DNS，请稍等...  
ipconfig /flushdns
netsh interface ip set dns name=%NAME% dhcp
echo 恢复动态DNS设置！  
pause  
  

:2

echo 正在设置本地DNS代理，请稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%offical% register=PRIMAR
echo 本地代理已设置！  
pause  


:3
 
echo 正在设置本地DNS代理，请稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%mogu1% register=PRIMAR
echo 本地代理已设置！  
pause  

:4

echo 正在设置本地DNS代理，请稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%mogu2% register=PRIMAR
echo 本地代理已设置！  
pause  

:5
 
echo 正在设置本地DNS代理，请稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%pure1% register=PRIMAR
echo 本地代理已设置！  
pause  

:6
echo 正在设置本地DNS代理，请稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%pure2% register=PRIMAR
echo 本地代理已设置！  
pause  


:7
echo 正在设置本地DNS代理，请稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%xsico1% register=PRIMAR
echo 本地代理已设置！  
pause  


:8
 
echo 正在设置本地DNS代理，请稍等...  
ipconfig /flushdns
netsh interface ipv4 set dns name=%NAME% source=static addr=%xsico2% register=PRIMAR
echo 本地代理已设置！  
pause  


  
