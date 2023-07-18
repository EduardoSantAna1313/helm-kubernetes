printf "### Installing redis ###\n\n"
helm install redis bitnami/redis

printf "\n\n### Upgrading redis ###\n\n"
helm upgrade redis bitnami/redis --set auth.password=Redis1234

printf "\n\n### List the releases ###\n\n"
helm ls


printf "\n\n### Getting all the values from redis release ###\n\n"
helm get values redis --all

printf "\n\n ### Getting values from redis revision=1 ###\n\n"
helm get values redis --revision=1


printf "\n\n### Uninstalling redis ###\n\n"
helm uninstall redis