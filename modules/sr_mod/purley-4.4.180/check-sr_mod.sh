#
# Checking modules is loaded
#

echo -n "Loading module sr_mod -> "
[ `/sbin/lsmod | grep -i sr_mod | wc -l` -gt 0 ] && echo "Module sr_mod loaded succesfully" || echo "Module sr_mod is not loaded"
