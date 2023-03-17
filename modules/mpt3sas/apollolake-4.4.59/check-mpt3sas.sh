#
# Checking modules is loaded
#

echo -n "Loading module scsi_transport_sas -> "
[ `/sbin/lsmod | grep -i scsi_transport_sas | wc -l` -gt 0 ] && echo "Module scsi_transport_sas loaded succesfully" || echo "Module scsi_transport_sas is not loaded"
echo -n "Loading module raid_class -> "
[ `/sbin/lsmod | grep -i raid_class | wc -l` -gt 0 ] && echo "Module raid_class loaded succesfully" || echo "Module raid_class is not loaded"
echo -n "Loading module mpt3sas -> "
[ `/sbin/lsmod | grep -i mpt3sas | wc -l` -gt 0 ] && echo "Module mpt3sas loaded succesfully" || echo "Module mpt3sas is not loaded"
