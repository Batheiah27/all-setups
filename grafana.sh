# 1. Install required dependencies
sudo yum install -y fontconfig

# 2. Download the Grafana Enterprise RPM package
wget https://dl.grafana.com/enterprise/release/grafana-enterprise-9.4.7-1.x86_64.rpm

# 3. Install the RPM
sudo yum localinstall -y grafana-enterprise-9.4.7-1.x86_64.rpm

# 4. Reload systemd
sudo systemctl daemon-reload

# 5. Enable Grafana to start on boot
sudo systemctl enable grafana-server

# 6. Start Grafana
sudo systemctl start grafana-server

# 7. Check Grafana status
sudo systemctl status grafana-server --no-pager

