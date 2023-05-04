#
# Checking modules is loaded
#

echo -n "Loading module cxgb4 -> "
[ `/sbin/lsmod | grep -i cxgb4 | wc -l` -gt 0 ] && echo "Module cxgb4 loaded succesfully" || echo "Module cxgb4 is not loaded"
