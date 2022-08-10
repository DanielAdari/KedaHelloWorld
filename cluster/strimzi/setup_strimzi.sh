kubectl create namespace kafka
echo "Created kafka namespace"

kubectl create -f 'https://strimzi.io/install/latest?namespace=kafka' -n kafka
echo "Applyed strimzi installation files"

kubectl apply -f https://strimzi.io/examples/latest/kafka/kafka-persistent-single.yaml -n kafka
echo "Creating CRDs for Kafka..."

kubectl wait kafka/my-cluster --for=condition=Ready --timeout=300s -n kafka
echo "Kafka CRDs created"

