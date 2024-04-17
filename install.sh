helm install \
  -f values.yaml \
  -n sherlock --create-namespace \
  test \
  charts/datasaur
