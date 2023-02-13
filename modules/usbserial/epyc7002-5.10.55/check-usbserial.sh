#
# Checking modules is loaded
#

echo -n "Loading module usbcore -> "
[ `/sbin/lsmod | grep -i usbcore | wc -l` -gt 0 ] && echo "Module usbcore loaded succesfully" || echo "Module usbcore is not loaded"
echo -n "Loading module usbserial -> "
[ `/sbin/lsmod | grep -i usbserial | wc -l` -gt 0 ] && echo "Module usbserial loaded succesfully" || echo "Module usbserial is not loaded"
