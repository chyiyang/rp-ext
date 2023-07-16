#
# Checking modules is loaded
#

echo -n "Loading module button -> "
[ `/sbin/lsmod | grep -i button | wc -l` -gt 0 ] && echo "Module button loaded succesfully" || echo "Module button is not loaded"
