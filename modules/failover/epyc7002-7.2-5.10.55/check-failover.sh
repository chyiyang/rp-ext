#
# Checking modules is loaded
#

echo -n "Loading module failover -> "
[ `/sbin/lsmod | grep -i failover | wc -l` -gt 0 ] && echo "Module failover loaded succesfully" || echo "Module failover is not loaded"
