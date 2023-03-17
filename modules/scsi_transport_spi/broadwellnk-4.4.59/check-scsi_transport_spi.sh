#
# Checking modules is loaded
#

echo -n "Loading module scsi_transport_spi -> "
[ `/sbin/lsmod | grep -i scsi_transport_spi | wc -l` -gt 0 ] && echo "Module scsi_transport_spi loaded succesfully" || echo "Module scsi_transport_spi is not loaded"
