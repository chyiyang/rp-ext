#
# Checking modules is loaded
#

echo -n "Loading module qed -> "
[ `/sbin/lsmod | grep -i qed | wc -l` -gt 0 ] && echo "Module qed loaded succesfully" || echo "Module qed is not loaded"
echo -n "Loading module qede -> "
[ `/sbin/lsmod | grep -i qede | wc -l` -gt 0 ] && echo "Module qede loaded succesfully" || echo "Module qede is not loaded"
