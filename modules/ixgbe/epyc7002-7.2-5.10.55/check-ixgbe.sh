#
# Checking modules is loaded
#

echo -n "Loading module ixgbe -> "
[ `/sbin/lsmod | grep -i ixgbe | wc -l` -gt 0 ] && echo "Module ixgbe loaded succesfully" || echo "Module ixgbe is not loaded"
