#
# Checking modules is loaded
#

echo -n "Loading module amd-xgbe -> "
[ `/sbin/lsmod | grep -i amd-xgbe | wc -l` -gt 0 ] && echo "Module amd-xgbe loaded succesfully" || echo "Module amd-xgbe is not loaded"
