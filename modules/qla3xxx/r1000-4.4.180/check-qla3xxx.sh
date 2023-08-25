#
# Checking modules is loaded
#

echo -n "Loading module qla3xxx -> "
[ `/sbin/lsmod | grep -i qla3xxx | wc -l` -gt 0 ] && echo "Module qla3xxx loaded succesfully" || echo "Module qla3xxx is not loaded"
