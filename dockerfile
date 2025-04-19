FROM grafana/loki:latest

EXPOSE 3100
WORKDIR /etc/loki

COPY loki-config.yaml /etc/loki/loki-config.yaml

CMD ["-config.file=/etc/loki/loki-config.yaml", "-config.expand-env=true"]
