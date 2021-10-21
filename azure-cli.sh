#
# Common Azure CLI commands for managing Azure resources are described at 
#  https://docs.microsoft.com/en-us/azure/virtual-machines/linux/cli-manage  
# A full list of commands can be found at 
#  https://docs.microsoft.com/en-us/cli/azure/service-page/list%20a%20-%20z?view=azure-cli-latest

# login
az login

# list subscriptions
az account list

# create a resource group
az group create --name cligroup --location eastus

# create a vm
az vm create --resource-group cligroup --name aznewvm -image win2016datadenter --admin-username admin