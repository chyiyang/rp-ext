#
# Checking modules is loaded
#

echo -n "Loading module it87 -> "
[ `/sbin/lsmod | grep -i it87 | wc -l` -gt 0 ] && echo "Module it87 loaded succesfully" || echo "Module it87 is not loaded"
