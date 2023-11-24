{{/* vim: set filetype=mustache: */}}

{{/*
Init containers shared template
*/}}
{{- define "common.deployment.initcontainers" -}}
{{- if and .Values.initContainers .Values.redis.enabled }}
initContainers:
  - name: init-redis
    image: busybox:1.28
    imagePullPolicy: IfNotPresent
    command:  ["sh", "-c", "until nc -z {{ .Release.Namespace }}-redis-master.{{ .Release.Namespace }}.svc.cluster.local 6379 > /dev/null; do echo Waiting for {{ .Release.Namespace }}-redis-master.{{ .Release.Namespace }}.svc.cluster.local; sleep 2; done;"]
    envFrom:
    - configMapRef:
        name: {{ include "app.fullname" . }}-ev
    {{- include "common.deployment.secretref" . | nindent 4 }}
{{- end }}
{{- end }}
