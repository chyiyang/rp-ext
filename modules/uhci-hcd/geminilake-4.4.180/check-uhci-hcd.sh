#
# Checking modules is loaded
#

echo -n "Loading module uhci-hcd -> "
[ `/sbin/lsmod | grep -i uhci-hcd | wc -l` -gt 0 ] && echo "Module uhci-hcd loaded succesfully" || echo "Module uhci-hcd is not loaded"
