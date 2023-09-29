#
# Checking modules is loaded
#

echo -n "Loading module be2net -> "
[ `/sbin/lsmod | grep -i be2net | wc -l` -gt 0 ] && echo "Module be2net loaded succesfully" || echo "Module be2net is not loaded"
