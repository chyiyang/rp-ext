#
# Checking modules is loaded
#

echo -n "Loading module xhci-pci -> "
[ `/sbin/lsmod | grep -i xhci-pci | wc -l` -gt 0 ] && echo "Module xhci-pci loaded succesfully" || echo "Module xhci-pci is not loaded"
