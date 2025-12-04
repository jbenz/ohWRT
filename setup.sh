#/bin/ash/
# Setup Script to make scripts executable and install dependencies
echo 'Installing script dependencies...'
opkg install git git-http curl
echo ' '
echo 'Setting up scripts...'
chmod +x setup.sh
chmod +x ip-api.sh
chmod +x update-openwrt.sh
echo ' '
echo 'Ready to go...'
