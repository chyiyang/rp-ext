#
# Checking modules is loaded
#

echo -n "Loading module cfbimgblt -> "
[ `/sbin/lsmod | grep -i cfbimgblt | wc -l` -gt 0 ] && echo "Module cfbimgblt loaded succesfully" || echo "Module cfbimgblt is not loaded"
