#!/bin/bash
set -e

# echo "deb https://packagecloud.io/grafana/stable/debian/ bionic main" | tee -a /etc/apt/sources.list
# curl https://packagecloud.io/gpg.key | apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
# echo "deb https://packages.grafana.com/enterprise/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt update && sudo apt install grafana -y
sudo systemctl daemon-reload
sudo systemctl start grafana-server