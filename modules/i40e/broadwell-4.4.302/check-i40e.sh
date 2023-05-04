#
# Checking modules is loaded
#

echo -n "Loading module i40e -> "
[ `/sbin/lsmod | grep -i i40e | wc -l` -gt 0 ] && echo "Module i40e loaded succesfully" || echo "Module i40e is not loaded"
