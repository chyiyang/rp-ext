#
# Checking modules is loaded
#

echo -n "Loading module ipv6 -> "
[ `/sbin/lsmod | grep -i ipv6 | wc -l` -gt 0 ] && echo "Module ipv6 loaded succesfully" || echo "Module ipv6 is not loaded"
echo -n "Loading module ib_core -> "
[ `/sbin/lsmod | grep -i ib_core | wc -l` -gt 0 ] && echo "Module ib_core loaded succesfully" || echo "Module ib_core is not loaded"
