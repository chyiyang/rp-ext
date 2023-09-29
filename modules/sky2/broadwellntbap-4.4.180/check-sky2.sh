#
# Checking modules is loaded
#

echo -n "Loading module sky2 -> "
[ `/sbin/lsmod | grep -i sky2 | wc -l` -gt 0 ] && echo "Module sky2 loaded succesfully" || echo "Module sky2 is not loaded"
