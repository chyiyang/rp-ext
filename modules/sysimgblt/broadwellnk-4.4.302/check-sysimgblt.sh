#
# Checking modules is loaded
#

echo -n "Loading module sysimgblt -> "
[ `/sbin/lsmod | grep -i sysimgblt | wc -l` -gt 0 ] && echo "Module sysimgblt loaded succesfully" || echo "Module sysimgblt is not loaded"
