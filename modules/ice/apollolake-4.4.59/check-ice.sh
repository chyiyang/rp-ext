#
# Checking modules is loaded
#

echo -n "Loading module auxiliary -> "
[ `/sbin/lsmod | grep -i auxiliary | wc -l` -gt 0 ] && echo "Module auxiliary loaded succesfully" || echo "Module auxiliary is not loaded"
echo -n "Loading module ice -> "
[ `/sbin/lsmod | grep -i ice | wc -l` -gt 0 ] && echo "Module ice loaded succesfully" || echo "Module ice is not loaded"
