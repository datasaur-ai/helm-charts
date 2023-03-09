{{- define "imagePullSecret" }}
{{- printf "{\"auths\": {\"%s\": {\"auth\": \"%s\"}}}" .Values.image.registry (printf "%s:%s" .Values.imageCredentials.username .Values.imageCredentials.password | b64enc) | b64enc }}
{{- end }}

{{- define "imagePullSecretTemplate" -}}
{{- if .Values.imageCredentials.username -}}
imagePullSecrets:
  - name: {{ .Release.Name }}-image-secret
{{- end -}}
{{- end -}}
