#
# Checking modules is loaded
#

echo -n "Loading module atl1e -> "
[ `/sbin/lsmod | grep -i atl1e | wc -l` -gt 0 ] && echo "Module atl1e loaded succesfully" || echo "Module atl1e is not loaded"
