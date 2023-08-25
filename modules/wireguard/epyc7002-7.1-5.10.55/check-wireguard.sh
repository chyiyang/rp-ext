#
# Checking modules is loaded
#

echo -n "Loading module wireguard -> "
[ `/sbin/lsmod | grep -i wireguard | wc -l` -gt 0 ] && echo "Module wireguard loaded succesfully" || echo "Module wireguard is not loaded"
