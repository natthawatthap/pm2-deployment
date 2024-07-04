ssh-keygen -t rsa -b 4096 -C "natthawatthap@gmail.com"

ls -l ~/.ssh/id_rsa ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub

# (Optional) If you need to re-add the public key to the authorized keys
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

# Get known hosts for your Mac's IP address
ssh-keyscan -H your-mac-ip