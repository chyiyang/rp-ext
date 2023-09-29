#
# Checking modules is loaded
#

echo -n "Loading module font -> "
[ `/sbin/lsmod | grep -i font | wc -l` -gt 0 ] && echo "Module font loaded succesfully" || echo "Module font is not loaded"
