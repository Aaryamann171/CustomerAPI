PATH="$PATH"
#/home/aryan/google-cloud-sdk/bin
IMAGE_NAME=gcr.io/microservices-1-258611/microservices-app-image:$BUILD_NUMBER
cd /home/aryan/Desktop/CustomerAPI/Source
gcloud builds submit --tag $IMAGE_NAME .
