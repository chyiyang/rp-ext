#
# Checking modules is loaded
#

echo -n "Loading module skge -> "
[ `/sbin/lsmod | grep -i skge | wc -l` -gt 0 ] && echo "Module skge loaded succesfully" || echo "Module skge is not loaded"
