# list commands
sfdx commands

# retrieve custom objects | add -u for username when needed
sfdx force:source:retrieve -m CustomObject 

# create custom objects
sfdx force:cmdt:create -n Mycmdt -d force-app/main/dirObjects
