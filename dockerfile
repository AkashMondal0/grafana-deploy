# Use the official Loki image
FROM grafana/loki:latest

# Expose the Loki port
EXPOSE 3100

# Set the working directory
WORKDIR /etc/loki

# Copy the Loki configuration file
COPY loki-config.yaml /etc/loki/loki-config.yaml

# Create the loki-data folder and set permissions
USER root
RUN mkdir -p /loki-data && chown -R loki:loki /loki-data
USER loki

# Define a volume for persistent data storage
VOLUME ["/loki-data"]

# Set the command to run Loki with the configuration file
CMD ["-config.file=/etc/loki/loki-config.yaml"]