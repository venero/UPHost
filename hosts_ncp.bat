@echo off
echo [���������ҳ��ǰ����ر�]
echo ���ڴ�github��������hosts...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/racaljk/hosts/master/hosts', 'tmphost.txt')"
clip < tmphost.txt
echo hosts���سɹ�
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
echo hostsд��ɹ�
echo [��������10��ping���Ժ�ر�]
ping www.google.com.hk -n 10