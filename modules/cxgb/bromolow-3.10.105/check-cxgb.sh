#
# Checking modules is loaded
#

echo -n "Loading module cxgb -> "
[ `/sbin/lsmod | grep -i cxgb | wc -l` -gt 0 ] && echo "Module cxgb loaded succesfully" || echo "Module cxgb is not loaded"
