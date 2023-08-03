printf "\n### Total releases $(helm ls --no-headers | wc -w) ###\n"

printf "\n### Installing apache with random name ###\n"

helm install bitnami/apache --generate-name --name-template "webservice-{{randAlpha 7 | lower}}"

RELEASE=$(helm ls --no-headers | awk '{print $1}')

printf "\n### Created release $RELEASE ###\n"

printf "\n### List all releases ###\n"

helm ls

printf "\n### Deleting release $RELEASE ###\n"

helm uninstall $RELEASE

printf "### Total releases $(helm ls --no-headers | wc -w) ###\n"
