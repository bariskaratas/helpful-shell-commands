# Create new ssh key
ssh-keygen -t ed25519 -C "email@example.com"

# Add a key into ssh-agent
ssh-add ~/.ssh/id_ed25519

# Test SSH connection to Github.com
ssh -T git@github.com

# When connection times out then port is not allowed, in thic case use another port
# Edit ~/.ssh/config and append the following
Host github.com
Hostname ssh.github.com
Port 443

# Save, exit and retry.
ssh -T git@github.com
    
# Try again, should show something like
# Hi bariskaratas! You've successfully authenticated, but GitHub does not provide shell access.

# Connect to a server with a key
ssh -i <private key path> user@99.88.77.66

 ##
### USER MANAGEMENT
 ##

# create home folder for a new user (before creating user account)
sudo mkhomedir_helper <user2>

# create a new user
sudo adduser <user2>

# set password for new user
sudo passwd <user2>

❰❰ MISC ❱❱

# login as another user
su - <user2>

# show details of os / distribution
cat /etc/*-release

