#
# Checking modules is loaded
#

echo -n "Loading module usbip-core -> "
[ `/sbin/lsmod | grep -i usbip-core | wc -l` -gt 0 ] && echo "Module usbip-core loaded succesfully" || echo "Module usbip-core is not loaded"
echo -n "Loading module usbcore -> "
[ `/sbin/lsmod | grep -i usbcore | wc -l` -gt 0 ] && echo "Module usbcore loaded succesfully" || echo "Module usbcore is not loaded"
echo -n "Loading module usbip-host -> "
[ `/sbin/lsmod | grep -i usbip-host | wc -l` -gt 0 ] && echo "Module usbip-host loaded succesfully" || echo "Module usbip-host is not loaded"
