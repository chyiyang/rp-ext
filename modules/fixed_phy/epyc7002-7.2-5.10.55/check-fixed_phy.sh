#
# Checking modules is loaded
#

echo -n "Loading module fixed_phy -> "
[ `/sbin/lsmod | grep -i fixed_phy | wc -l` -gt 0 ] && echo "Module fixed_phy loaded succesfully" || echo "Module fixed_phy is not loaded"
