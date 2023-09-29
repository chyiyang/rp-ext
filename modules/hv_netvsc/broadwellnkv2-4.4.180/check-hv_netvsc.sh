#
# Checking modules is loaded
#

echo -n "Loading module hv_netvsc -> "
[ `/sbin/lsmod | grep -i hv_netvsc | wc -l` -gt 0 ] && echo "Module hv_netvsc loaded succesfully" || echo "Module hv_netvsc is not loaded"
