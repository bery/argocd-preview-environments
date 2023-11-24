# grafana

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.16.0](https://img.shields.io/badge/AppVersion-1.16.0-informational?style=flat-square)

A Helm chart for Kubernetes

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://grafana.github.io/helm-charts | grafana | 6.58.* |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| alertmanager.alertmanagerSpec.routePrefix | string | `"/"` |  |
| alertmanager.service.port | int | `80` |  |
| coreDns.enabled | bool | `true` |  |
| defaultRules.additionalRuleAnnotations | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.alertmanager | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.configReloaders | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.etcd | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.general | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.k8s | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubeApiserverAvailability | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubeApiserverBurnrate | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubeApiserverHistogram | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubeApiserverSlos | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubeControllerManager | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubePrometheusGeneral | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubePrometheusNodeRecording | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubeProxy | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubeSchedulerAlerting | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubeSchedulerRecording | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubeStateMetrics | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubelet | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubernetesApps | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubernetesResources | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubernetesStorage | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.kubernetesSystem | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.network | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.node | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.nodeExporterAlerting | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.nodeExporterRecording | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.prometheus | object | `{}` |  |
| defaultRules.additionalRuleGroupAnnotations.prometheusOperator | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.alertmanager | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.configReloaders | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.etcd | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.general | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.k8s | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubeApiserverAvailability | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubeApiserverBurnrate | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubeApiserverHistogram | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubeApiserverSlos | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubeControllerManager | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubePrometheusGeneral | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubePrometheusNodeRecording | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubeProxy | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubeSchedulerAlerting | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubeSchedulerRecording | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubeStateMetrics | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubelet | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubernetesApps | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubernetesResources | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubernetesStorage | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.kubernetesSystem | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.network | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.node | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.nodeExporterAlerting | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.nodeExporterRecording | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.prometheus | object | `{}` |  |
| defaultRules.additionalRuleGroupLabels.prometheusOperator | object | `{}` |  |
| defaultRules.additionalRuleLabels | object | `{}` |  |
| defaultRules.annotations | object | `{}` |  |
| defaultRules.appNamespacesTarget | string | `".*"` |  |
| defaultRules.create | bool | `true` |  |
| defaultRules.disabled | object | `{}` |  |
| defaultRules.labels | object | `{}` |  |
| defaultRules.rules.alertmanager | bool | `true` |  |
| defaultRules.rules.configReloaders | bool | `true` |  |
| defaultRules.rules.etcd | bool | `true` |  |
| defaultRules.rules.general | bool | `true` |  |
| defaultRules.rules.k8s | bool | `true` |  |
| defaultRules.rules.kubeApiserverAvailability | bool | `true` |  |
| defaultRules.rules.kubeApiserverBurnrate | bool | `true` |  |
| defaultRules.rules.kubeApiserverHistogram | bool | `true` |  |
| defaultRules.rules.kubeApiserverSlos | bool | `true` |  |
| defaultRules.rules.kubeControllerManager | bool | `true` |  |
| defaultRules.rules.kubePrometheusGeneral | bool | `true` |  |
| defaultRules.rules.kubePrometheusNodeRecording | bool | `true` |  |
| defaultRules.rules.kubeProxy | bool | `true` |  |
| defaultRules.rules.kubeSchedulerAlerting | bool | `true` |  |
| defaultRules.rules.kubeSchedulerRecording | bool | `true` |  |
| defaultRules.rules.kubeStateMetrics | bool | `true` |  |
| defaultRules.rules.kubelet | bool | `true` |  |
| defaultRules.rules.kubernetesApps | bool | `true` |  |
| defaultRules.rules.kubernetesResources | bool | `true` |  |
| defaultRules.rules.kubernetesStorage | bool | `true` |  |
| defaultRules.rules.kubernetesSystem | bool | `true` |  |
| defaultRules.rules.network | bool | `true` |  |
| defaultRules.rules.node | bool | `true` |  |
| defaultRules.rules.nodeExporterAlerting | bool | `true` |  |
| defaultRules.rules.nodeExporterRecording | bool | `true` |  |
| defaultRules.rules.prometheus | bool | `true` |  |
| defaultRules.rules.prometheusOperator | bool | `true` |  |
| defaultRules.rules.windows | bool | `true` |  |
| defaultRules.runbookUrl | string | `"https://runbooks.prometheus-operator.dev/runbooks"` |  |
| grafana.datasources."datasources.yaml".apiVersion | int | `1` |  |
| grafana.datasources."datasources.yaml".datasources[0].access | string | `"proxy"` |  |
| grafana.datasources."datasources.yaml".datasources[0].isDefault | bool | `true` |  |
| grafana.datasources."datasources.yaml".datasources[0].name | string | `"Prometheus"` |  |
| grafana.datasources."datasources.yaml".datasources[0].type | string | `"prometheus"` |  |
| grafana.datasources."datasources.yaml".datasources[0].url | string | `"http://prometheus-server:80"` |  |
| grafana.defaultDashboardsEnabled | bool | `true` |  |
| grafana.defaultDashboardsTimezone | string | `"utc"` |  |
| grafana.enabled | bool | `true` |  |
| grafana.forceDeployDashboards | bool | `false` |  |
| grafana.forceDeployDatasources | bool | `false` |  |
| grafana.namespaceOverride | string | `""` |  |
| grafana.sidecar.dashboards.annotations | object | `{}` |  |
| grafana.sidecar.dashboards.enabled | bool | `true` |  |
| grafana.sidecar.dashboards.label | string | `"grafana_dashboard"` |  |
| grafana.sidecar.dashboards.labelValue | string | `"1"` |  |
| grafana.sidecar.dashboards.multicluster.etcd.enabled | bool | `false` |  |
| grafana.sidecar.dashboards.multicluster.global.enabled | bool | `false` |  |
| grafana.sidecar.dashboards.provider.allowUiUpdates | bool | `false` |  |
| grafana.sidecar.dashboards.searchNamespace | string | `"ALL"` |  |
| grafana.sidecar.datasources.alertmanager.enabled | bool | `true` |  |
| grafana.sidecar.datasources.alertmanager.handleGrafanaManagedAlerts | bool | `false` |  |
| grafana.sidecar.datasources.alertmanager.implementation | string | `"prometheus"` |  |
| grafana.sidecar.datasources.alertmanager.uid | string | `"alertmanager"` |  |
| grafana.sidecar.datasources.annotations | object | `{}` |  |
| grafana.sidecar.datasources.createPrometheusReplicasDatasources | bool | `false` |  |
| grafana.sidecar.datasources.defaultDatasourceEnabled | bool | `true` |  |
| grafana.sidecar.datasources.enabled | bool | `true` |  |
| grafana.sidecar.datasources.exemplarTraceIdDestinations | object | `{}` |  |
| grafana.sidecar.datasources.httpMethod | string | `"POST"` |  |
| grafana.sidecar.datasources.isDefaultDatasource | bool | `true` |  |
| grafana.sidecar.datasources.label | string | `"grafana_datasource"` |  |
| grafana.sidecar.datasources.labelValue | string | `"1"` |  |
| grafana.sidecar.datasources.uid | string | `"prometheus"` |  |
| kubeApiServer.enabled | bool | `true` |  |
| kubeControllerManager.enabled | bool | `true` |  |
| kubeEtcd.enabled | bool | `true` |  |
| kubeProxy.enabled | bool | `false` |  |
| kubeScheduler.enabled | bool | `false` |  |
| kubelet.enabled | bool | `true` |  |
| nodeExporter.enabled | bool | `true` |  |
| prometheus.prometheusSpec.remoteWriteDashboards | bool | `false` |  |
| prometheus.prometheusSpec.routePrefix | string | `"/"` |  |
| prometheus.service.port | int | `80` |  |
| prometheusOperator.kubeletService.enabled | bool | `false` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.3](https://github.com/norwoodj/helm-docs/releases/v1.11.3)
