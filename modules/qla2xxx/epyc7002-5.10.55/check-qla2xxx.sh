#
# Checking modules is loaded
#

echo -n "Loading module qla2xxx -> "
[ `/sbin/lsmod | grep -i qla2xxx | wc -l` -gt 0 ] && echo "Module qla2xxx loaded succesfully" || echo "Module qla2xxx is not loaded"
