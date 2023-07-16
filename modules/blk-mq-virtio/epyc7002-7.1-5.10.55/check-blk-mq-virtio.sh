#
# Checking modules is loaded
#

echo -n "Loading module blk-mq-virtio -> "
[ `/sbin/lsmod | grep -i blk-mq-virtio | wc -l` -gt 0 ] && echo "Module blk-mq-virtio loaded succesfully" || echo "Module blk-mq-virtio is not loaded"
