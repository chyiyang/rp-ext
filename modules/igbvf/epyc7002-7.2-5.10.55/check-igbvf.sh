#
# Checking modules is loaded
#

echo -n "Loading module igbvf -> "
[ `/sbin/lsmod | grep -i igbvf | wc -l` -gt 0 ] && echo "Module igbvf loaded succesfully" || echo "Module igbvf is not loaded"
