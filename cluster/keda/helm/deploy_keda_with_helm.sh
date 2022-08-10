helm repo add kedacore https://kedacore.github.io/charts
helm repo update
kubectl create namespace keda
helm install keda kedacore/keda --namespace keda

if [ "$?" -ne 0 ]; then
    echo "Failed to install Keda"
    exit 1
fi

echo "Keda successfully installed!"