#
# Checking modules is loaded
#

echo -n "Loading module virtio -> "
[ `/sbin/lsmod | grep -i virtio | wc -l` -gt 0 ] && echo "Module virtio loaded succesfully" || echo "Module virtio is not loaded"
echo -n "Loading module virtio_ring -> "
[ `/sbin/lsmod | grep -i virtio_ring | wc -l` -gt 0 ] && echo "Module virtio_ring loaded succesfully" || echo "Module virtio_ring is not loaded"
echo -n "Loading module virtio_input -> "
[ `/sbin/lsmod | grep -i virtio_input | wc -l` -gt 0 ] && echo "Module virtio_input loaded succesfully" || echo "Module virtio_input is not loaded"
