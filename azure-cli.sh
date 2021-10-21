# create a resource group
az group create --name cligroup --location eastus

# create a vm
az vm create --resource-group cligroup --name aznewvm -image win2016datadenter --admin-username admin