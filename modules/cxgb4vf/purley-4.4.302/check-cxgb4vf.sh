#
# Checking modules is loaded
#

echo -n "Loading module cxgb4vf -> "
[ `/sbin/lsmod | grep -i cxgb4vf | wc -l` -gt 0 ] && echo "Module cxgb4vf loaded succesfully" || echo "Module cxgb4vf is not loaded"
