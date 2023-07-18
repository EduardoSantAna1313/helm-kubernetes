printf "### Installing redis ###\n\n"

helm install redis bitnami/redis

helm ls

printf "### Upgrading redis ###\n\n"

helm upgrade redis bitnami/redis --set auth.password=Redis1234


printf "### History ###\n\n"

helm history redis

printf "### Rolling bacj ###\n\n"

helm rollback redis 1

printf "### Uinstalling redis with --keep-history ###\n\n"

helm uninstall redis --keep-history

printf "### Getting secrets ###\n\n"

kubectl get secrets


printf "### Uinstalling redis all ###\n\n"

helm uninstall redis