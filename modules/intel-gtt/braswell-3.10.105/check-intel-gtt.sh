#
# Checking modules is loaded
#

echo -n "Loading module intel-gtt -> "
[ `/sbin/lsmod | grep -i intel-gtt | wc -l` -gt 0 ] && echo "Module intel-gtt loaded succesfully" || echo "Module intel-gtt is not loaded"
