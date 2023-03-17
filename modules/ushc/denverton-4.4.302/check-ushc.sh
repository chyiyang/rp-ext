#
# Checking modules is loaded
#

echo -n "Loading module mmc_core -> "
[ `/sbin/lsmod | grep -i mmc_core | wc -l` -gt 0 ] && echo "Module mmc_core loaded succesfully" || echo "Module mmc_core is not loaded"
echo -n "Loading module ushc -> "
[ `/sbin/lsmod | grep -i ushc | wc -l` -gt 0 ] && echo "Module ushc loaded succesfully" || echo "Module ushc is not loaded"
