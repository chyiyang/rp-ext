#
# Checking modules is loaded
#

echo -n "Loading module usb-common -> "
[ `/sbin/lsmod | grep -i usb-common | wc -l` -gt 0 ] && echo "Module usb-common loaded succesfully" || echo "Module usb-common is not loaded"
echo -n "Loading module usbip-core -> "
[ `/sbin/lsmod | grep -i usbip-core | wc -l` -gt 0 ] && echo "Module usbip-core loaded succesfully" || echo "Module usbip-core is not loaded"
