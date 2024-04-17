helm upgrade \
  -f values.yaml \
  -f analytics.yaml \
  -f glair-agent-jobs.yaml \
  -n analytics-simulation \
  production \
  charts/datasaur
