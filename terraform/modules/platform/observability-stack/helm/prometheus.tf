grafana:
  enabled: false

alertmanager:
  enabled: false

prometheus:
  prometheusSpec:
    retention: 15d

    serviceMonitorSelectorNilUsesHelmValues: false

    resources:
      requests:
        memory: 1Gi
        cpu: 500m

      limits:
        memory: 2Gi
        cpu: 1