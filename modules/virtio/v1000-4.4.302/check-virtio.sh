#
# Checking modules is loaded
#

echo -n "Loading module virtio -> "
[ `/sbin/lsmod | grep -i virtio | wc -l` -gt 0 ] && echo "Module virtio loaded succesfully" || echo "Module virtio is not loaded"
