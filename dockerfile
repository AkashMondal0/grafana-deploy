FROM grafana/grafana:latest

# Copy provisioning config and dashboard
COPY dashboards/ /etc/grafana/dashboards/
COPY provisioning/ /etc/grafana/provisioning/

# Expose Grafana's default port
EXPOSE 3000

# Ensure the data directory exists and mount it as a volume
VOLUME ["/var/lib/grafana"]

# Mount a volume for dashboards
VOLUME ["/etc/grafana/dashboards"]

# Switch to a non-root user for security
USER grafana
