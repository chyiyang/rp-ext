#
# Checking modules is loaded
#

echo -n "Loading module vmxnet3 -> "
[ `/sbin/lsmod | grep -i vmxnet3 | wc -l` -gt 0 ] && echo "Module vmxnet3 loaded succesfully" || echo "Module vmxnet3 is not loaded"
