#
# Checking modules is loaded
#

echo -n "Loading module usbcore -> "
[ `/sbin/lsmod | grep -i usbcore | wc -l` -gt 0 ] && echo "Module usbcore loaded succesfully" || echo "Module usbcore is not loaded"
echo -n "Loading module mii -> "
[ `/sbin/lsmod | grep -i mii | wc -l` -gt 0 ] && echo "Module mii loaded succesfully" || echo "Module mii is not loaded"
echo -n "Loading module r8152 -> "
[ `/sbin/lsmod | grep -i r8152 | wc -l` -gt 0 ] && echo "Module r8152 loaded succesfully" || echo "Module r8152 is not loaded"
