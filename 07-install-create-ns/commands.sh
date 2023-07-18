printf "### Checking if namespace exists ###\n\n"

kubectl get ns | grep "webservice" | wc -l

printf "\n\n### Trying to install apache with nonexistent namespace"

helm install apache bitnami/apache --namespace=webservice

printf "\n\n### Installing apache with flag --create-namespace ###\n\n"

helm install apache bitnami/apache --namespace=webservice --create-namespace

printf "\n\n### Waiting for the deployment ###\n\n"

kubectl rollout status deploy/apache -n webservice

printf "### listing the realeases ###\n\n"

helm ls -n webservice

printf "### Uninstalling apache ###\n\n"

helm uninstall apache -n webservice