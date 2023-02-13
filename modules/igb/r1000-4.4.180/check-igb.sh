#
# Checking modules is loaded
#

echo -n "Loading module i2c-algo-bit -> "
[ `/sbin/lsmod | grep -i i2c-algo-bit | wc -l` -gt 0 ] && echo "Module i2c-algo-bit loaded succesfully" || echo "Module i2c-algo-bit is not loaded"
echo -n "Loading module igb -> "
[ `/sbin/lsmod | grep -i igb | wc -l` -gt 0 ] && echo "Module igb loaded succesfully" || echo "Module igb is not loaded"
