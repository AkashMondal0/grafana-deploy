# Use official Loki image
FROM grafana/loki:latest

# Expose default Loki port
EXPOSE 3100

# Set the working directory
WORKDIR /etc/loki

# Copy the Loki config file
COPY loki-config.yaml /etc/loki/loki-config.yaml

# Start Loki with the custom config
CMD ["-config.file=/etc/loki/loki-config.yaml", "-config.expand-env=true"]
