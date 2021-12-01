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

# connect and debug via openssl
openssl debug s_client -connect bitbucket.org:443
