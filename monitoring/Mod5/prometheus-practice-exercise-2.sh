#!/bin/bash

# 1. Install Node Exporter:

# Use the package manager (e.g., apt, yum, zypper) to install Node Exporter on your bare instance. You may search online for the documentation on how to install the Node Exporter on your instance.
# 2. Configure Node Exporter:

# Edit the Node Exporter configuration file to specify the collector options and settings.

# The configuration file is typically located at /etc/prometheus/node_exporter.yml. Customize it based on your requirements.

# 3. Start Node Exporter:

# Start the Node Exporter service.

# Download Node Exporter
wget \
  https://github.com/prometheus/node_exporter/releases/download/v1.0.1/node_exporter-1.0.1.linux-amd64.tar.gz

# Create User
sudo groupadd -f node_exporter
sudo useradd -g node_exporter --no-create-home --shell /bin/false node_exporter
sudo mkdir /etc/node_exporter
sudo chown node_exporter:node_exporter /etc/node_exporter

# Unpack Node Exporter Binary
tar -xvf node_exporter-1.0.1.linux-amd64.tar.gz
mv node_exporter-1.0.1.linux-amd64 node_exporter-files

# Install Node Exporter
sudo cp node_exporter-files/node_exporter /usr/bin/
sudo chown node_exporter:node_exporter /usr/bin/node_exporter

# Setup Node Exporter Service
cat > /usr/lib/systemd/system/node_exporter.service << EOF
[Unit]
Description=Node Exporter
Documentation=https://prometheus.io/docs/guides/node-exporter/
Wants=network-online.target
After=network-online.target

[Service]
User=node_exporter
Group=node_exporter
Type=simple
Restart=on-failure
ExecStart=/usr/bin/node_exporter \
  --web.listen-address=:9200

[Install]
WantedBy=multi-user.target
EOF

sudo chmod 664 /usr/lib/systemd/system/node_exporter.service

# Reload systemd and Start Node Exporter
sudo systemctl daemon-reload
sudo systemctl start node_exporter

# Check the node exporter service status using the following command.
sudo systemctl status node_exporter

# Configure node_exporter to start at boot
sudo systemctl enable node_exporter.service

# If firewalld is enabled and running, add a rule for port 9200
sudo firewall-cmd --permanent --zone=public --add-port=9200/tcp
sudo firewall-cmd --reload

# Verify Node Exporter is Running
curl http://localhost:9100/metrics

# Clean Up
rm -rf node_exporter-1.0.1.linux-amd64.tar.gz node_exporter-files


# 4. Export the node exporter to scrape configs from the host
# Edit the Prometheus configuration file to enable scraping metrics from a host with Node Exporter installed. or you may download this config yaml file and edit it from there.
wget https://github.com/RobssR/Mon1/blob/main/config-map.yaml

# 5. Verify Integration:
# Check the Prometheus Targets page to verify that the Node Exporter target is added.
# Visit http://<initials>-prom.acad.opswerks.net/targets in a web browser.
# You should see a target named node-exporter with the status UP.