#!/usr/bin/bash

#查看运行状态 systemd status v2ray@vless
#重启vless systemd restart v2ray@vless
# need unzip and wget
apt update && apt install wget unzip -y

download_x-ui() {
  DOWNLOAD_LINK="https://https://github.com/tt8296065/x-ui-tt/releases/download/1/x-ui-linux-amd64.tar.gz"
  wget $DOWNLOAD_LINK
}
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
