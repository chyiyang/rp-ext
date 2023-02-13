#
# Checking modules is loaded
#

echo -n "Loading module xhci-hcd -> "
[ `/sbin/lsmod | grep -i xhci-hcd | wc -l` -gt 0 ] && echo "Module xhci-hcd loaded succesfully" || echo "Module xhci-hcd is not loaded"
