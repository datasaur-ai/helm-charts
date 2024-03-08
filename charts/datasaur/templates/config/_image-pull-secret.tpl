{{- define "imagePullSecret" }}
{{- printf "{\"auths\": {\"%s\": {\"auth\": \"%s\"}}}" (default .Values.image.registry .Values.imageCredentials.registry) (printf "%s:%s" .Values.imageCredentials.username .Values.imageCredentials.password | b64enc) | b64enc }}
{{- end }}

{{- define "imagePullSecretTemplate" -}}
{{- if .Values.imageCredentials.username -}}
imagePullSecrets:
  - name: {{ .Release.Name }}-image-secret
{{- end -}}
{{- end -}}
