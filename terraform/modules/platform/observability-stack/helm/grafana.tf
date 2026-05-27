adminUser: admin
adminPassword: grafana-admin

service:
  type: ClusterIP

persistence:
  enabled: true
  size: 10Gi

datasources:
  datasources.yaml:
    apiVersion: 1
    datasources:
      - name: Prometheus
        type: prometheus
        access: proxy
        url: http://kube-prometheus-stack-prometheus:9090

      - name: Loki
        type: loki
        access: proxy
        url: http://loki:3100