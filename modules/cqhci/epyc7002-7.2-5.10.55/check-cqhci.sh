#
# Checking modules is loaded
#

echo -n "Loading module mmc_core -> "
[ `/sbin/lsmod | grep -i mmc_core | wc -l` -gt 0 ] && echo "Module mmc_core loaded succesfully" || echo "Module mmc_core is not loaded"
echo -n "Loading module cqhci -> "
[ `/sbin/lsmod | grep -i cqhci | wc -l` -gt 0 ] && echo "Module cqhci loaded succesfully" || echo "Module cqhci is not loaded"
