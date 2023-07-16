#
# Checking modules is loaded
#

echo -n "Loading module atl1c -> "
[ `/sbin/lsmod | grep -i atl1c | wc -l` -gt 0 ] && echo "Module atl1c loaded succesfully" || echo "Module atl1c is not loaded"
