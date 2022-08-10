kubectl apply -f https://github.com/kedacore/keda/releases/download/v2.8.0/keda-2.8.0.yaml

if [ "$?" -ne 0 ]; then
    echo "Failed to install Keda"
    exit 1
fi

echo "Keda successfully deployed!"