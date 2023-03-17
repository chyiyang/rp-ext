#
# Checking modules is loaded
#

echo -n "Loading module ixgb -> "
[ `/sbin/lsmod | grep -i ixgb | wc -l` -gt 0 ] && echo "Module ixgb loaded succesfully" || echo "Module ixgb is not loaded"
