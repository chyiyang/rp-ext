#
# Checking modules is loaded
#

echo -n "Loading module ixgbevf -> "
[ `/sbin/lsmod | grep -i ixgbevf | wc -l` -gt 0 ] && echo "Module ixgbevf loaded succesfully" || echo "Module ixgbevf is not loaded"
