#
# Checking modules is loaded
#

echo -n "Loading module usbnet -> "
[ `/sbin/lsmod | grep -i usbnet | wc -l` -gt 0 ] && echo "Module usbnet loaded succesfully" || echo "Module usbnet is not loaded"
echo -n "Loading module usbcore -> "
[ `/sbin/lsmod | grep -i usbcore | wc -l` -gt 0 ] && echo "Module usbcore loaded succesfully" || echo "Module usbcore is not loaded"
echo -n "Loading module cdc_ncm -> "
[ `/sbin/lsmod | grep -i cdc_ncm | wc -l` -gt 0 ] && echo "Module cdc_ncm loaded succesfully" || echo "Module cdc_ncm is not loaded"
