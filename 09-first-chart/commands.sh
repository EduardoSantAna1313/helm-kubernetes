rm -r my-first-chart/

printf "### Creating first helm chart ###\n"

helm create my-first-chart

printf "\n### Installing chart from local repository ###\n"

helm install my-chart my-first-chart/

printf "\n### Installed release: $(helm ls --no-headers | awk '{print $1}') ###\n"

helm ls

printf "\n### Uninstalling chart ###\n"

helm uninstall my-chart

printf "\n### Total releases: $(helm ls --no-headers | wc -w) ###\n"