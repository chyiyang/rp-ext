#
# Checking modules is loaded
#

echo -n "Loading module sg -> "
[ `/sbin/lsmod | grep -i sg | wc -l` -gt 0 ] && echo "Module sg loaded succesfully" || echo "Module sg is not loaded"
