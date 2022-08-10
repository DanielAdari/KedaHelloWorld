kubectl create namespace kafka
echo "Created kafka namespace"

kubectl create -f 'https://strimzi.io/install/latest?namespace=kafka' -n kafka
echo "Applied Strimzi installation files"

kubectl apply -f https://strimzi.io/examples/latest/kafka/kafka-persistent-single.yaml -n kafka
echo "Creating CRDs for Kafka..."

kubectl wait kafka/my-cluster --for=condition=Ready --timeout=300s -n kafka
if [ "$?" -ne 0 ]; then
    echo "Failed to create Kafka CRDs (might have exceeded timeout)" &&
    exit 1
fi
echo "Kafka CRDs created!"
