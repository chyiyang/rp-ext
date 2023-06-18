#
# Checking modules is loaded
#

echo -n "Loading module i40evf -> "
[ `/sbin/lsmod | grep -i i40evf | wc -l` -gt 0 ] && echo "Module i40evf loaded succesfully" || echo "Module i40evf is not loaded"
