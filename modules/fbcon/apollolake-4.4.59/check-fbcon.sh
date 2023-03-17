#
# Checking modules is loaded
#

echo -n "Loading module font -> "
[ `/sbin/lsmod | grep -i font | wc -l` -gt 0 ] && echo "Module font loaded succesfully" || echo "Module font is not loaded"
echo -n "Loading module bitblit -> "
[ `/sbin/lsmod | grep -i bitblit | wc -l` -gt 0 ] && echo "Module bitblit loaded succesfully" || echo "Module bitblit is not loaded"
echo -n "Loading module fbcon -> "
[ `/sbin/lsmod | grep -i fbcon | wc -l` -gt 0 ] && echo "Module fbcon loaded succesfully" || echo "Module fbcon is not loaded"
