PATH="$PATH";/home/aryan/google-cloud-sdk/bin
IMAGE_NAME=gcr.io/microservices/gpymicro-image:%BUILD_NUMBER%
cd /home/aryan/Desktop/CustomerAPI/Source
kubectl set image deployment/py-gmicro py-gmicro=%IMAGE_NAME%