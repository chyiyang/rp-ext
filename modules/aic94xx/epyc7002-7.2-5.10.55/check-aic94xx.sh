#
# Checking modules is loaded
#

echo -n "Loading module libsas -> "
[ `/sbin/lsmod | grep -i libsas | wc -l` -gt 0 ] && echo "Module libsas loaded succesfully" || echo "Module libsas is not loaded"
echo -n "Loading module scsi_transport_sas -> "
[ `/sbin/lsmod | grep -i scsi_transport_sas | wc -l` -gt 0 ] && echo "Module scsi_transport_sas loaded succesfully" || echo "Module scsi_transport_sas is not loaded"
echo -n "Loading module aic94xx -> "
[ `/sbin/lsmod | grep -i aic94xx | wc -l` -gt 0 ] && echo "Module aic94xx loaded succesfully" || echo "Module aic94xx is not loaded"
