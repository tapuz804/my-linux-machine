
# Create user

sudo adduser marom

# Add user to root

sudo usermod -aG sudo marom

# Create group

sudo groupadd devs

# Add current user to the group

    sudo usermod -aG devs marom

# Create shared directory

sudo mkdir -p /srv/shared

# Set ownership to root:devs

sudo chown root:devs /srv/shared

# Set permissions to 2775 (SGID)

sudo chmod 2775 /srv/shared

passwd:
marom:x:1001:1001:maroms,100,,:/home/marom:/bin/bash

group:
devs:x:1002:marom