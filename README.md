[![owner1](https://img.shields.io/badge/Powered%20by-PW--Chen-blue.svg?style=flat)](https://github.com/PW-Chen)

# dns-switch      

## 介紹
現今的穿越防火長的方法眾多，包刮vpn, socks5 代理, hosts, 科學DNS。本項目致力於將眾多的科學DNS做出簡單的整理，使用戶可以更簡單的方式切換科學DNS。

#### 使用說明
* 配置：對文件點選右鍵編輯，`set NAME="本地連接"`將本地連接修改為自己現在正在使用中的網卡名稱(參考位置：`控制台\網路和網際網路\網路連線`)    
<img src="https://raw.githubusercontent.com/PW-Chen/dns-switch/master/image/demo1.PNG" width="40%" height="40%">  

* 運行：右鍵`以系統管理員身分執行` 輸入想要切換的 DNS

<img src="https://raw.githubusercontent.com/PW-Chen/dns-switch/master/image/demo.PNG" width="40%" height="40%">     

* 檢查是否順利切換 DNS 位置 於 CMD 輸入 `nslookup`     


#### 參數引用
* [Mogu DNS](https://www.mogudns.net/)    
mogu1 = 115.159.96.69    
mogu2 = 122.114.245.45

* [Pure DNS](http://puredns.cn/)    
pure1 = 123.207.137.88    
pure2 = 115.159.220.214

* [XsicoDNS](http://dns.xsico.cn/)    
xsico1 = 115.159.157.26    
xsico2 = 115.159.158.38

* [aixyz](https://aixyz.com/)    
aixyz1 = 115.159.146.99    
aixyz2 = 123.206.21.48
