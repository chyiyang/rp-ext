#
# Checking modules is loaded
#

echo -n "Loading module usbnet -> "
[ `/sbin/lsmod | grep -i usbnet | wc -l` -gt 0 ] && echo "Module usbnet loaded succesfully" || echo "Module usbnet is not loaded"
echo -n "Loading module r8153_ecm -> "
[ `/sbin/lsmod | grep -i r8153_ecm | wc -l` -gt 0 ] && echo "Module r8153_ecm loaded succesfully" || echo "Module r8153_ecm is not loaded"
