#
# Checking modules is loaded
#

echo -n "Loading module mmc_core -> "
[ `/sbin/lsmod | grep -i mmc_core | wc -l` -gt 0 ] && echo "Module mmc_core loaded succesfully" || echo "Module mmc_core is not loaded"
echo -n "Loading module via-sdmmc -> "
[ `/sbin/lsmod | grep -i via-sdmmc | wc -l` -gt 0 ] && echo "Module via-sdmmc loaded succesfully" || echo "Module via-sdmmc is not loaded"
