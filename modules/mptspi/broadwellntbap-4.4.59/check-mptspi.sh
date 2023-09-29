#
# Checking modules is loaded
#

echo -n "Loading module mptscsih -> "
[ `/sbin/lsmod | grep -i mptscsih | wc -l` -gt 0 ] && echo "Module mptscsih loaded succesfully" || echo "Module mptscsih is not loaded"
echo -n "Loading module mptbase -> "
[ `/sbin/lsmod | grep -i mptbase | wc -l` -gt 0 ] && echo "Module mptbase loaded succesfully" || echo "Module mptbase is not loaded"
echo -n "Loading module scsi_transport_spi -> "
[ `/sbin/lsmod | grep -i scsi_transport_spi | wc -l` -gt 0 ] && echo "Module scsi_transport_spi loaded succesfully" || echo "Module scsi_transport_spi is not loaded"
echo -n "Loading module mptspi -> "
[ `/sbin/lsmod | grep -i mptspi | wc -l` -gt 0 ] && echo "Module mptspi loaded succesfully" || echo "Module mptspi is not loaded"
