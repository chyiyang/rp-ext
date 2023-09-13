#
# Checking modules is loaded
#

echo -n "Loading module ch -> "
[ `/sbin/lsmod | grep -i ch | wc -l` -gt 0 ] && echo "Module ch loaded succesfully" || echo "Module ch is not loaded"
