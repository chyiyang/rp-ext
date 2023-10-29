#
# Checking modules is loaded
#

echo -n "Loading module mmc_core -> "
[ `/sbin/lsmod | grep -i mmc_core | wc -l` -gt 0 ] && echo "Module mmc_core loaded succesfully" || echo "Module mmc_core is not loaded"
echo -n "Loading module cqhci -> "
[ `/sbin/lsmod | grep -i cqhci | wc -l` -gt 0 ] && echo "Module cqhci loaded succesfully" || echo "Module cqhci is not loaded"
echo -n "Loading module mtk-sd -> "
[ `/sbin/lsmod | grep -i mtk-sd | wc -l` -gt 0 ] && echo "Module mtk-sd loaded succesfully" || echo "Module mtk-sd is not loaded"
