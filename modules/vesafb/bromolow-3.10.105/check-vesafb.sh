#
# Checking modules is loaded
#

echo -n "Loading module vesafb -> "
[ `/sbin/lsmod | grep -i vesafb | wc -l` -gt 0 ] && echo "Module vesafb loaded succesfully" || echo "Module vesafb is not loaded"
