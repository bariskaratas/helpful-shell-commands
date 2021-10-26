## SSH ##

# Check if ssh-agent is running
eval "$(ssh-agent -s)"

## CERTIFICATES ##

# import a key (.net programming) when seeing following error
#  Cannot import the following key file: companyname.pfx. The key file may be password protected. 
#  To correct this, try to import the certificate again or manually install the certificate to the 
#  Strong Name CSP with the following key container name: VS_KEY_3E185446540E7F7A
sn -i <KeyFile> <ContainerName>

## NETWORKING ##

# find domain by ip address
nslookup.exe <ip-address>
