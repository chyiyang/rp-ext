#
# Checking modules is loaded
#

echo -n "Loading module virtio_mmio -> "
[ `/sbin/lsmod | grep -i virtio_mmio | wc -l` -gt 0 ] && echo "Module virtio_mmio loaded succesfully" || echo "Module virtio_mmio is not loaded"
