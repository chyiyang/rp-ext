#
# Checking modules is loaded
#

echo -n "Loading module mmc_core -> "
[ `/sbin/lsmod | grep -i mmc_core | wc -l` -gt 0 ] && echo "Module mmc_core loaded succesfully" || echo "Module mmc_core is not loaded"
echo -n "Loading module vub300 -> "
[ `/sbin/lsmod | grep -i vub300 | wc -l` -gt 0 ] && echo "Module vub300 loaded succesfully" || echo "Module vub300 is not loaded"
