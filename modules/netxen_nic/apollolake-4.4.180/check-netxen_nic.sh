#
# Checking modules is loaded
#

echo -n "Loading module netxen_nic -> "
[ `/sbin/lsmod | grep -i netxen_nic | wc -l` -gt 0 ] && echo "Module netxen_nic loaded succesfully" || echo "Module netxen_nic is not loaded"
