#
# Checking modules is loaded
#

echo -n "Loading module igb -> "
[ `/sbin/lsmod | grep -i igb | wc -l` -gt 0 ] && echo "Module igb loaded succesfully" || echo "Module igb is not loaded"
