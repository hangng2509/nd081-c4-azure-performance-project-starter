resourceGroup="lab4-rg"
region="eastus"
myAcrName="myacr20221116"
clusterName="udacity-cluster"

az acr create --resource-group $resourceGroup --name $myAcrName --sku Basic
# # Log in to the ACR
# az acr login --name $myAcrName
# # Get the ACR login server name
# # To use the azure-vote-front container image with ACR, the image needs to be tagged
# # with the login server address of your registry.
# # Find the login server address of your registry
# az acr show --name myacr20221116 --query loginServer --output table
# # Associate a tag to the local image
# docker tag azure-vote-front:v1 myacr20221116.azurecr.io/azure-vote-front:v1
# # Now you will see myacr20221116.azurecr.io/azure-vote-front:v1 if you run docker images
# # Push the local registry to remote
# docker push myacr20221116.azurecr.io/azure-vote-front:v1
# # Verify if you image is up in the cloud.
# az acr repository list --name myacr20221116.azurecr.io --output table
# # Associate the AKS cluster with the ACR
# # az aks update -n "udacity-cluster" -g "lab4-rg" --attach-acr "myacr20221116"