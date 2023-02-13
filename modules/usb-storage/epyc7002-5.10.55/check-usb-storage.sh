#
# Checking modules is loaded
#

echo -n "Loading module usbcore -> "
[ `/sbin/lsmod | grep -i usbcore | wc -l` -gt 0 ] && echo "Module usbcore loaded succesfully" || echo "Module usbcore is not loaded"
echo -n "Loading module usb-storage -> "
[ `/sbin/lsmod | grep -i usb-storage | wc -l` -gt 0 ] && echo "Module usb-storage loaded succesfully" || echo "Module usb-storage is not loaded"
