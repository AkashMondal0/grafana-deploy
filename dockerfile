# Use the official Prometheus base image
FROM prom/prometheus:latest

# Copy your custom Prometheus configuration file into the container
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose the default Prometheus port
EXPOSE 9090

# Start Prometheus
CMD [ "--config.file=/etc/prometheus/prometheus.yml", \
      "--storage.tsdb.path=/prometheus", \
      "--web.console.libraries=/usr/share/prometheus/console_libraries", \
      "--web.console.templates=/usr/share/prometheus/consoles", \
      "--web.listen-address=0.0.0.0:9090" ]
