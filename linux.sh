## USER MANAGEMENT ##

# create a new user with home directory
sudo adduser -m <user2>

# set password for new user
sudo passwd <user2>

# login as another user
su - <user2>


## BEAUTIFY ##

# json
python3 -m json.tool


## MISC ##

# show details of os / distribution
cat /etc/*-release

# change port of ssh in /etc/ssh/sshd_config and restart service
sudo systemctl restart sshd

# export variable from file (file includes export name=value)
. <file>
