echo "[UPHost]Downloading hosts from github..."
wget -O tmphosts.txt https://raw.githubusercontent.com/racaljk/hosts/master/hosts
echo "[UPHost]Download complete."
mv tmphosts.txt /etc/hosts
echo "[UPHost]Rewrite hosts complete."
# xdg-open https://www.google.com.hk > /dev/null
echo "[UPHost]Ping starts."
ping -c 4 www.google.com.hk
