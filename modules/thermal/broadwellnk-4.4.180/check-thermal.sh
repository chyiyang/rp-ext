#
# Checking modules is loaded
#

echo -n "Loading module thermal -> "
[ `/sbin/lsmod | grep -i thermal | wc -l` -gt 0 ] && echo "Module thermal loaded succesfully" || echo "Module thermal is not loaded"
