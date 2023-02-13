#
# Checking modules is loaded
#

echo -n "Loading module cdc_ncm -> "
[ `/sbin/lsmod | grep -i cdc_ncm | wc -l` -gt 0 ] && echo "Module cdc_ncm loaded succesfully" || echo "Module cdc_ncm is not loaded"
