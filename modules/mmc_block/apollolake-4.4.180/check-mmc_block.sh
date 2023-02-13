#
# Checking modules is loaded
#

echo -n "Loading module mmc_core -> "
[ `/sbin/lsmod | grep -i mmc_core | wc -l` -gt 0 ] && echo "Module mmc_core loaded succesfully" || echo "Module mmc_core is not loaded"
echo -n "Loading module mmc_block -> "
[ `/sbin/lsmod | grep -i mmc_block | wc -l` -gt 0 ] && echo "Module mmc_block loaded succesfully" || echo "Module mmc_block is not loaded"
