# Show current layout
lsblk

# Create a 1GB image file
sudo dd if=/dev/zero of=/srv/data.img bs=1M count=1024

# Create a loop device
sudo losetup -fP /srv/data.img

# Find which loop device was assigned
losetup -a

# Example output:
# /dev/loop0: []: (/srv/data.img)

# Create ext4 filesystem with label DATA
sudo mkfs.ext4 -L DATA /dev/loop0

# Get UUID
sudo blkid /dev/loop0

# Create mount point
sudo mkdir -p /data

# Mount it
sudo mount /dev/loop0 /data

# Verify
findmnt /data