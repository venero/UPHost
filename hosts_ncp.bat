@echo off
echo [在浏览器打开页面前请勿关闭]
echo 正在从github下载最新hosts...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/racaljk/hosts/master/hosts', 'tmphost.txt')"
clip < tmphost.txt
echo hosts下载成功
echo 正在扫描hosts内容...
set var=y
set goodlist=google twitter facebook instagram
set badlist=alipay icbc boc sjtu
(for %%a in (%goodlist%) do (
findstr /I %%a tmphost.txt >nul 2>&1 && echo 存在 %%a || echo 不存在 %%a 
))
(for %%a in (%badlist%) do (
findstr /I %%a tmphost.txt >nul 2>&1 && echo 存在 %%a && set /p var="检测到hosts内容存在异常，是否继续？(y/n)" || echo 不存在 %%a 
))
if "%var%"=="n" ( 
del tmphost.txt
exit
) else (
echo hosts扫描结束
)
mshta "javascript:var s=clipboardData.getData('text');if(s)new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).Write(s);close();"|more >C:\Windows\System32\drivers\etc\hosts
ECHO. >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 lm.licenses.adobe.com >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 na2m-pr.licenses.adobe.com >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 practivate.adobe.com >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 activate.adobe.com >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 ereg.adobe.com >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 wip.adobe.com >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 lmlicenses.wip4.adobe.com >> C:\Windows\System32\drivers\etc\hosts
start https://twitter.com/?lang=zh-cn
start https://www.facebook.com/
start https://www.instagram.com/?hl=zh-cn
start https://www.google.com.hk/?gws_rd=ssl
del tmphost.txt
echo hosts写入成功
echo [批处理将在10次ping测试后关闭]
ping www.google.com.hk -n 10