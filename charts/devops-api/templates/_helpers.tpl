{{- define "devops-api.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "devops-api.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "devops-api.labels" -}}
app.kubernetes.io/name: {{ include "devops-api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version }}
{{- end }}

{{- define "devops-api.selectorLabels" -}}
app.kubernetes.io/name: {{ include "devops-api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}