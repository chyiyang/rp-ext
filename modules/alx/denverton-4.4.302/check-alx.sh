#
# Checking modules is loaded
#

echo -n "Loading module alx -> "
[ `/sbin/lsmod | grep -i alx | wc -l` -gt 0 ] && echo "Module alx loaded succesfully" || echo "Module alx is not loaded"
