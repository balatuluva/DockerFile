# Create a file called prometheus.service at /etc/systemd/system/prometheus.service

[Unit]
Description=Prometheus
Wants=network-online.target
After=network-online.target

[Service]
User=prometheus
Group=prometheus
Type=simple
ExecStart=/usr/local/bin/prometheus \
	--config.file=/etc/prometheus/prometheus.yml \
	--storage.tsdb.path=/var/lib/prometheus/ \
	--web.console.templates=/etc/prometheus/consoles \
	--web.console.libraries=/etc/prometheus/console_libraries \
	--web.enable-lifecycle \
	--web.enable-admin-api \
	--log.level=info

[Install]
WantedBy=multi-user.target