#
# Checking modules is loaded
#

echo -n "Loading module i8042 -> "
[ `/sbin/lsmod | grep -i i8042 | wc -l` -gt 0 ] && echo "Module i8042 loaded succesfully" || echo "Module i8042 is not loaded"
