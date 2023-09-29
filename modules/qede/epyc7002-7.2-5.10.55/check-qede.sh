#
# Checking modules is loaded
#

echo -n "Loading module ipv6 -> "
[ `/sbin/lsmod | grep -i ipv6 | wc -l` -gt 0 ] && echo "Module ipv6 loaded succesfully" || echo "Module ipv6 is not loaded"
echo -n "Loading module qed -> "
[ `/sbin/lsmod | grep -i qed | wc -l` -gt 0 ] && echo "Module qed loaded succesfully" || echo "Module qed is not loaded"
echo -n "Loading module qede -> "
[ `/sbin/lsmod | grep -i qede | wc -l` -gt 0 ] && echo "Module qede loaded succesfully" || echo "Module qede is not loaded"
