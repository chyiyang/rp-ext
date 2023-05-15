#
# Checking modules is loaded
#

echo -n "Loading module virtio -> "
[ `/sbin/lsmod | grep -i virtio | wc -l` -gt 0 ] && echo "Module virtio loaded succesfully" || echo "Module virtio is not loaded"
echo -n "Loading module net_failover -> "
[ `/sbin/lsmod | grep -i net_failover | wc -l` -gt 0 ] && echo "Module net_failover loaded succesfully" || echo "Module net_failover is not loaded"
echo -n "Loading module virtio_ring -> "
[ `/sbin/lsmod | grep -i virtio_ring | wc -l` -gt 0 ] && echo "Module virtio_ring loaded succesfully" || echo "Module virtio_ring is not loaded"
echo -n "Loading module virtio_net -> "
[ `/sbin/lsmod | grep -i virtio_net | wc -l` -gt 0 ] && echo "Module virtio_net loaded succesfully" || echo "Module virtio_net is not loaded"
