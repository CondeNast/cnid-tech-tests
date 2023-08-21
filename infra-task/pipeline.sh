cd "cmd/hello-world"
GOOS=linux go build -o hello-world .
docker build -t hello-world .
docker tag hello-world nasim/nasim-test:mytag
# docker push nasim/nasim-test:mytag
cd ../../terraform
terraform init
terraform apply --var "image-repo=nasim/nasim-test" --var "image_version=mytag" --auto-approve
