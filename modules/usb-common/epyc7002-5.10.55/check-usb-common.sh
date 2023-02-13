#
# Checking modules is loaded
#

echo -n "Loading module usb-common -> "
[ `/sbin/lsmod | grep -i usb-common | wc -l` -gt 0 ] && echo "Module usb-common loaded succesfully" || echo "Module usb-common is not loaded"
