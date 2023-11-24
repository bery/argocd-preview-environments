{{/* vim: set filetype=mustache: */}}

{{/*
Init containers shared template
*/}}
{{- define "common.deployment.secretref" -}}
{{- if .Values.secrets.enabled }}
- secretRef:
    name: {{ template "app.fullname" . }}-sec
{{- end }}
{{- if .Values.pr.enableSecretOverrides }}
- secretRef:
    name: {{ include "app.fullname" . }}-secret-variables
{{- end }}
{{- end }}
