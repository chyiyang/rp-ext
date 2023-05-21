#
# Checking modules is loaded
#

echo -n "Loading module ehci-hcd -> "
[ `/sbin/lsmod | grep -i ehci-hcd | wc -l` -gt 0 ] && echo "Module ehci-hcd loaded succesfully" || echo "Module ehci-hcd is not loaded"
