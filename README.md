# x-ui-tt

安装&升级
bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)

手动安装&升级
然后将这个压缩包上传到服务器的/root/目录下，并使用root用户登录服务器
cd /root/
rm x-ui/ /usr/local/x-ui/ /usr/bin/x-ui -rf
tar zxvf x-ui-linux-amd64.tar.gz
chmod +x x-ui/x-ui x-ui/bin/xray-linux-* x-ui/x-ui.sh
cp x-ui/x-ui.sh /usr/bin/x-ui
cp -f x-ui/x-ui.service /etc/systemd/system/
mv x-ui/ /usr/local/
systemctl daemon-reload
systemctl enable x-ui
systemctl restart x-ui
