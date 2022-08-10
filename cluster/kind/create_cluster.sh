if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <config-file>"
    exit 1
fi

kind create cluster --config=$1
if [ "$?" -ne 0 ]; then
    echo "Failed to create cluster" &&
    exit 1
fi

echo "Kind cluster created"