#
# Checking modules is loaded
#

echo -n "Loading module i2c-algo-bit -> "
[ `/sbin/lsmod | grep -i i2c-algo-bit | wc -l` -gt 0 ] && echo "Module i2c-algo-bit loaded succesfully" || echo "Module i2c-algo-bit is not loaded"
