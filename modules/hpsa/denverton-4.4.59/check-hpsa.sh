#
# Checking modules is loaded
#

echo -n "Loading module scsi_transport_sas -> "
[ `/sbin/lsmod | grep -i scsi_transport_sas | wc -l` -gt 0 ] && echo "Module scsi_transport_sas loaded succesfully" || echo "Module scsi_transport_sas is not loaded"
echo -n "Loading module hpsa -> "
[ `/sbin/lsmod | grep -i hpsa | wc -l` -gt 0 ] && echo "Module hpsa loaded succesfully" || echo "Module hpsa is not loaded"
