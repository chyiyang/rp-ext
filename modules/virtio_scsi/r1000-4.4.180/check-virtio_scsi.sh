#
# Checking modules is loaded
#

echo -n "Loading module virtio_scsi -> "
[ `/sbin/lsmod | grep -i virtio_scsi | wc -l` -gt 0 ] && echo "Module virtio_scsi loaded succesfully" || echo "Module virtio_scsi is not loaded"
