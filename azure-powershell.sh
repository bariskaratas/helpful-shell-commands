#
# Common PowerShell commands can be found at
#  https://docs.microsoft.com/en-us/azure/virtual-machines/windows/ps-common-ref
#

# connect
Connect-AzAccount
    
# set to a specific subscription
Set-AzContext -Subscription "aaa-bbb-ccc-ddd-eee"

# create a new resource group
New-AzResourceGroup -Name <mygroup> -Location <EastUS>

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

# install module 'Az' when needed
Install-Module -Name Az -AllowClobber -Scope CurrentUser
# import
Import-Module -Name Az

# When installation does not work then it can be installed via msi file too.
# If it shows a warning that AzureRM cannot co-exist with installed package then this can be uninstalled via 
Uninstall-AzureRm
