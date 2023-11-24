# app

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.16.0](https://img.shields.io/badge/AppVersion-1.16.0-informational?style=flat-square)

A Helm chart for Kubernetes

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| file://../static-server/ | static-server | 0.1.0 |
| file://../static-server/ | host-dashboard(static-server) | 0.1.0 |
| https://charts.bitnami.com/bitnami | common | 1.x.x |
| https://charts.bitnami.com/bitnami | postgresql | 12.8.2 |
| https://charts.bitnami.com/bitnami | redis | 17.15.4 |
| https://localstack.github.io/helm-charts | localstack | 0.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| argoHook | string | `"Sync"` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| commonAnnotations."reloader.stakater.com/auto" | string | `"true"` |  |
| env.DATABASE_NAME | string | `"bery"` |  |
| env.PROJECT_NAME | string | `"xbery"` |  |
| fullnameOverride | string | `""` |  |
| helmHook | string | `"pre-upgrade"` |  |
| helmHookDeletePolicy | string | `"before-hook-creation"` |  |
| helmHooks.databaseMigrations.useAdminUser | bool | `true` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"hub.docker.com/kad"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations."alb.ingress.kubernetes.io/actions.ssl-redirect" | string | `"{\"Type\": \"redirect\", \"RedirectConfig\": { \"Protocol\": \"HTTPS\", \"Port\": \"443\", \"StatusCode\": \"HTTP_301\"}}"` |  |
| ingress.annotations."alb.ingress.kubernetes.io/certificate-arn" | string | `"arn:aws:acm:eu-central-1:$AWS_ACCOUNT_ID:certificate/1d88a512-95ce-486d-91f3-94e49f1b2fb0"` |  |
| ingress.annotations."alb.ingress.kubernetes.io/group.name" | string | `"api"` |  |
| ingress.annotations."alb.ingress.kubernetes.io/healthcheck-path" | string | `"/plugin/hosts/745"` |  |
| ingress.annotations."alb.ingress.kubernetes.io/listen-ports" | string | `"[{\"HTTP\": 80}, {\"HTTPS\":443}]"` |  |
| ingress.annotations."alb.ingress.kubernetes.io/scheme" | string | `"internet-facing"` |  |
| ingress.annotations."alb.ingress.kubernetes.io/target-group-attributes" | string | `"deregistration_delay.timeout_seconds=30"` |  |
| ingress.annotations."alb.ingress.kubernetes.io/target-type" | string | `"ip"` |  |
| ingress.className | string | `"alb"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/*"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| initContainers.enabled | bool | `true` |  |
| localstack.enabled | bool | `false` |  |
| localstack.service.type | string | `"ClusterIP"` |  |
| nameOverride | string | `""` |  |
| nodeAffinityPreset.key | string | `""` |  |
| nodeAffinityPreset.type | string | `""` |  |
| nodeAffinityPreset.values | list | `[]` |  |
| nodeSelector | object | `{}` |  |
| podAffinityPreset | string | `""` |  |
| podAnnotations."prometheus.io/path" | string | `"/metrics"` |  |
| podAnnotations."prometheus.io/port" | string | `"3012"` |  |
| podAnnotations."prometheus.io/scrape" | string | `"true"` |  |
| podAntiAffinityPreset | string | `"soft"` |  |
| podSecurityContext | object | `{}` |  |
| postgresql.auth.database | string | `"postgres"` |  |
| postgresql.auth.enablePostgresUser | bool | `true` |  |
| postgresql.auth.postgresPassword | string | `"postgres"` |  |
| postgresql.enabled | bool | `false` |  |
| postgresql.global.imageRegistry | string | `"$AWS_ACCOUNT_ID.dkr.ecr.eu-central-1.amazonaws.com"` |  |
| postgresql.image.debug | bool | `true` |  |
| postgresql.image.pullPolicy | string | `"IfNotPresent"` |  |
| postgresql.image.repository | string | `"sandbox/postgres"` |  |
| postgresql.image.tag | string | `"latest-partial"` |  |
| postgresql.primary.extendedConfiguration | string | `"min_wal_size=200MB\nmax_wal_senders=0\narchive_mode=off\nwal_level=minimal\nmax_wal_size=2GB\nwork_mem=32MB\nshared_buffers=1GB\nmaintenance_work_mem=1GB\nfull_page_writes=off\nautovacuum=off\nwal_buffers=-1"` |  |
| postgresql.primary.extraEnvVars[0].name | string | `"POSTGRES_JOBS"` |  |
| postgresql.primary.extraEnvVars[0].value | string | `"4"` |  |
| postgresql.primary.extraEnvVars[1].name | string | `"POSTGRES_PG_RESTORE_PARAMS"` |  |
| postgresql.primary.extraEnvVars[1].value | string | `"--exit-on-error -Fc --disable-triggers --no-owner --verbose --jobs=4"` |  |
| postgresql.primary.livenessProbe.initialDelaySeconds | int | `450` |  |
| postgresql.primary.persistence.enabled | bool | `true` |  |
| postgresql.primary.persistence.size | string | `"120Gi"` |  |
| postgresql.primary.readinessProbe.initialDelaySeconds | int | `450` |  |
| postgresql.primary.resources.limits.cpu | string | `"4"` |  |
| postgresql.primary.resources.limits.memory | string | `"8Gi"` |  |
| postgresql.primary.resources.requests.cpu | string | `"2"` |  |
| postgresql.primary.resources.requests.memory | string | `"6Gi"` |  |
| postgresql.primary.startupProbe.initialDelaySeconds | int | `450` |  |
| postgresql.service.port | int | `5432` |  |
| redis.architecture | string | `"standalone"` |  |
| redis.auth.password | string | `"redis-password"` |  |
| redis.enabled | bool | `false` |  |
| redis.master.disableCommands | list | `[]` |  |
| redis.master.persistence.enabled | bool | `true` |  |
| redis.sentinel.enabled | bool | `false` |  |
| replicaCount | int | `3` |  |
| resources.limits.cpu | string | `"1"` |  |
| resources.limits.memory | string | `"2Gi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| secrets.enabled | bool | `true` |  |
| secrets.envOverrides | object | `{}` |  |
| secrets.envSecretDatabaseMap.TYPEORM_ADMIN_PASSWORD | string | `"remote-aurora-aws-typeorm-app-admin-password"` |  |
| secrets.envSecretDatabaseMap.TYPEORM_ADMIN_USERNAME | string | `"remote-aurora-aws-typeorm-app-admin-username"` |  |
| secrets.envSecretDatabaseMap.TYPEORM_HOST | string | `"remote-aurora-aws-typeorm-host"` |  |
| secrets.envSecretDatabaseMap.TYPEORM_PASSWORD | string | `"remote-aurora-aws-typeorm-application-password"` |  |
| secrets.envSecretDatabaseMap.TYPEORM_PORT | string | `"remote-aurora-aws-typeorm-port"` |  |
| secrets.envSecretDatabaseMap.TYPEORM_USERNAME | string | `"remote-aurora-aws-typeorm-application-username"` |  |
| secrets.envSecretMap.AWS_MAIN_ACCESS_KEY_ID | string | `"aws-main-access-key-id"` |  |
| secrets.envSecretMap.AWS_MAIN_SECRET_ACCESS_KEY | string | `"aws-main-secret-access-key"` |  |
| secrets.envSecretMap.AWS_OREGON_ACCESS_KEY_ID | string | `"aws-oregon-access-key-id"` |  |
| secrets.envSecretMap.AWS_OREGON_SECRET_ACCESS_KEY | string | `"aws-oregon-secret-access-key"` |  |
| secrets.envSecretReplicaDatabaseMap.TYPEORM_ADMIN_PASSWORD | string | `"remote-typeorm-password"` |  |
| secrets.envSecretReplicaDatabaseMap.TYPEORM_ADMIN_USERNAME | string | `"remote-typeorm-username"` |  |
| secrets.envSecretReplicaDatabaseMap.TYPEORM_HOST | string | `"remote-typeorm-host"` |  |
| secrets.envSecretReplicaDatabaseMap.TYPEORM_PASSWORD | string | `"remote-typeorm-password"` |  |
| secrets.envSecretReplicaDatabaseMap.TYPEORM_PORT | string | `"remote-typeorm-port"` |  |
| secrets.envSecretReplicaDatabaseMap.TYPEORM_USERNAME | string | `"remote-typeorm-username"` |  |
| secrets.prefix | string | `"preview"` |  |
| secrets.secretStoreRef.kind | string | `"ClusterSecretStore"` |  |
| secrets.secretStoreRef.name | string | `"cluster-secretstore"` |  |
| securityContext | object | `{}` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| terminationGracePeriodSeconds | int | `30` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.3](https://github.com/norwoodj/helm-docs/releases/v1.11.3)
