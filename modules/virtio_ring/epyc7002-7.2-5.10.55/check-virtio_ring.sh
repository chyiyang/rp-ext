#
# Checking modules is loaded
#

echo -n "Loading module virtio_ring -> "
[ `/sbin/lsmod | grep -i virtio_ring | wc -l` -gt 0 ] && echo "Module virtio_ring loaded succesfully" || echo "Module virtio_ring is not loaded"
