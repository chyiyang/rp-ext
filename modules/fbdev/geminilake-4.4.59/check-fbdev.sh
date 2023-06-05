#
# Checking modules is loaded
#

echo -n "Loading module fbdev -> "
[ `/sbin/lsmod | grep -i fbdev | wc -l` -gt 0 ] && echo "Module fbdev loaded succesfully" || echo "Module fbdev is not loaded"
