#
# Checking modules is loaded
#

echo -n "Loading module virtio_pci -> "
[ `/sbin/lsmod | grep -i virtio_pci | wc -l` -gt 0 ] && echo "Module virtio_pci loaded succesfully" || echo "Module virtio_pci is not loaded"
