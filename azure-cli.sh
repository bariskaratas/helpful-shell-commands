#
# Common Azure CLI commands for managing Azure resources are described at 
#  https://docs.microsoft.com/en-us/azure/virtual-machines/linux/cli-manage  
# A full list of commands can be found at 
#  https://docs.microsoft.com/en-us/cli/azure/service-page/list%20a%20-%20z?view=azure-cli-latest

# login
az login

# list subscriptions
az account list

# list as table 
az account list --output table

# switch subscription 
az account set --subscription "aa-bb-cc-dd"

# create a resource group
az group create --name cligroup --location eastus
# also possible
az group create --name cliGroup --location "North Europe"

# create a vm
az vm create \
--resource-group cligroup \
--name aznewvm \
--image win2016datadenter \
--admin-username admin

# create a new appservice plan (use 'g' as shortcut for group and 'n' for name)
az apservice plan create --name -g groupName -n appserviceplanName


## SQL ##

# create a new webapp
az wepapp create -g groupName -n webappName -p webappplanName
# or like this within an app service plan
az webapp create --resource-group myResourceGroup --plan myAppServicePlan --name <app-name> --runtime 'DOTNET|5.0' --deployment-local-git

# create a new firewall rule
az sql server firewall-rule create --resource-group myResourceGroup --server <server-name> --name AllowAzureIps --start-ip-address 0.0.0.0 --end-ip-address 0.0.0.0

# allow access from local computer
az sql server firewall-rule create --name AllowLocalClient --server <server-name> --resource-group myResourceGroup --start-ip-address=<your-ip-address> --end-ip-address=<your-ip-address>

# spin up a new webapp (within an exisiting html project)
az webapp up --location eastus -name webappName --html

# create a sql db
az sql server create --name <server-name> --resource-group myResourceGroup --location "West Europe" --admin-user <db-username> --admin-password <db-password>

# create a database
az sql db create --resource-group myResourceGroup --server <server-name> --name coreDB --service-objective S0

# retrieve a connection string
az sql db show-connection-string --client ado.net --server <server-name> --name coreDB


## DEPLOYMENTS ##

# create a deployment user
az webapp deployment user set --user-name <username> --password <password>

# list runtimes
az webapp list-runtimes 

# list runtimes for linux
az webapp list-runtimes --linux

# set a connection string 
az webapp config connection-string set --resource-group myResourceGroup --name <app-name> --settings MyDbConnection='<connection-string>' --connection-string-type SQLAzure


## DOCKER INTEGRATION ##

# install helm
az acr helm install-cli --yes
# set path in env

# list images 
az acr repository list --name <acrName> --output table

# enable admin
az acr update -n <acrName> --admin-enabled true

# list credentials 
az acr credential show -n <acrName>

## MISC ##

# check connectivity to acr
az acr check-health -n <acrName> --yes
