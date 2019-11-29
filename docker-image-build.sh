SET PATH=%PATH%;/home/aryan/google-cloud-sdk/bin
SET IMAGE_NAME=gcr.io/handle-books/gpymicro-image:%BUILD_NUMBER%
cd /home/aryan/Desktop/CustomerAPI
gcloud builds submit --tag %IMAGE_NAME% .
