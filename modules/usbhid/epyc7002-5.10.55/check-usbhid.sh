#
# Checking modules is loaded
#

echo -n "Loading module usbcore -> "
[ `/sbin/lsmod | grep -i usbcore | wc -l` -gt 0 ] && echo "Module usbcore loaded succesfully" || echo "Module usbcore is not loaded"
echo -n "Loading module usbhid -> "
[ `/sbin/lsmod | grep -i usbhid | wc -l` -gt 0 ] && echo "Module usbhid loaded succesfully" || echo "Module usbhid is not loaded"
