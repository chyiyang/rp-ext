#
# Checking modules is loaded
#

echo -n "Loading module usbnet -> "
[ `/sbin/lsmod | grep -i usbnet | wc -l` -gt 0 ] && echo "Module usbnet loaded succesfully" || echo "Module usbnet is not loaded"
echo -n "Loading module usbcore -> "
[ `/sbin/lsmod | grep -i usbcore | wc -l` -gt 0 ] && echo "Module usbcore loaded succesfully" || echo "Module usbcore is not loaded"
echo -n "Loading module aqc111 -> "
[ `/sbin/lsmod | grep -i aqc111 | wc -l` -gt 0 ] && echo "Module aqc111 loaded succesfully" || echo "Module aqc111 is not loaded"
