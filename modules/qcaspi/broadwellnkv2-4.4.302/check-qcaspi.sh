#
# Checking modules is loaded
#

echo -n "Loading module qcaspi -> "
[ `/sbin/lsmod | grep -i qcaspi | wc -l` -gt 0 ] && echo "Module qcaspi loaded succesfully" || echo "Module qcaspi is not loaded"
