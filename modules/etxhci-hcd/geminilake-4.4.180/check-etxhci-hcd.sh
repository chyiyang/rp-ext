#
# Checking modules is loaded
#

echo -n "Loading module etxhci-hcd -> "
[ `/sbin/lsmod | grep -i etxhci-hcd | wc -l` -gt 0 ] && echo "Module etxhci-hcd loaded succesfully" || echo "Module etxhci-hcd is not loaded"
