#
# Common PowerShell commands can be found at
#  https://docs.microsoft.com/en-us/azure/virtual-machines/windows/ps-common-ref
#

# connect
Connect-AzAccount
    
# find commands
get-command *AzWebApp*

# set to a specific subscription
Set-AzContext -Subscription "aaa-bbb-ccc-ddd-eee"

# create a new resource group
New-AzResourceGroup -Name <mygroup> -Location <EastUS>

# create a new app service plan
New-AzAppServicePlan -ResourceGroupName <resourceName> -Name <serviceName> -Location "EastUS" -Tier "Free" 

# create a new web app (requires unique name as fully qualified domain name)
New-AzWebbApp -ResourceGroupName <resourceName> -Name <webappName> -Location "EastUS" -AppServicePlan <servicePlan>

# get vm
Get-AzVm

# create a new vm
New-AzVm \ 
-ResourceGroupName <mygroup> \ 
-Name <myvm> \ 
-Location <EastUS> \ 
-VirtualNetworkName <mynet> \ 
-SubnetName <default> \ 
-SecurityGroupName <mysecgroup> \ 
-PublicIpAddressname <mypublicip> \ 
-OpenPorts <port1, port2>

# disconnect
Disconnect-AzAccount

## MISC ##

# install module 'Az' when needed
Install-Module -Name Az -AllowClobber -Scope CurrentUser
# import
Import-Module -Name Az

# When installation does not work then it can be installed via msi file too.
# If it shows a warning that AzureRM cannot co-exist with installed package then this can be uninstalled via 
Uninstall-AzureRm
