./kind/create_cluster.sh ./kind/config.yaml
./strimzi/setup_strimzi.sh
./keda/helm/deploy_keda_with_helm.sh
