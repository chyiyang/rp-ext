#
# Checking modules is loaded
#

echo -n "Loading module scsi_transport_fc -> "
[ `/sbin/lsmod | grep -i scsi_transport_fc | wc -l` -gt 0 ] && echo "Module scsi_transport_fc loaded succesfully" || echo "Module scsi_transport_fc is not loaded"
