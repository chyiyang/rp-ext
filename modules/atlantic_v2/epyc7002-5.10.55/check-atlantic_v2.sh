#
# Checking modules is loaded
#

echo -n "Loading module atlantic_v2 -> "
[ `/sbin/lsmod | grep -i atlantic_v2 | wc -l` -gt 0 ] && echo "Module atlantic_v2 loaded succesfully" || echo "Module atlantic_v2 is not loaded"
