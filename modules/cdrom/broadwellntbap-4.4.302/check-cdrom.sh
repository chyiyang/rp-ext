#
# Checking modules is loaded
#

echo -n "Loading module cdrom -> "
[ `/sbin/lsmod | grep -i cdrom | wc -l` -gt 0 ] && echo "Module cdrom loaded succesfully" || echo "Module cdrom is not loaded"
