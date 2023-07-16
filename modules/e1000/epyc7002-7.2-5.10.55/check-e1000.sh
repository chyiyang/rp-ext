#
# Checking modules is loaded
#

echo -n "Loading module e1000 -> "
[ `/sbin/lsmod | grep -i e1000 | wc -l` -gt 0 ] && echo "Module e1000 loaded succesfully" || echo "Module e1000 is not loaded"
