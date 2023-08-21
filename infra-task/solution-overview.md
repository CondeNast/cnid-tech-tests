#### NOTE: I do not have a working aws account, few things might not go as expected

Steps to deploy

1. Update local kubeconfig file with the k8s cluster where it is intended to deploy

2. make sure to install terraform is installed(linux/windows version based on host machine OS)

3. Create image repository and use it while docker push and pass as `image-repo` argument in terraform apply step.
