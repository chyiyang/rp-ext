#
# Checking modules is loaded
#

echo -n "Loading module auxiliary -> "
[ `/sbin/lsmod | grep -i auxiliary | wc -l` -gt 0 ] && echo "Module auxiliary loaded succesfully" || echo "Module auxiliary is not loaded"
