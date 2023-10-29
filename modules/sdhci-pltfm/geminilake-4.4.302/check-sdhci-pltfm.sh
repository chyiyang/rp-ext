#
# Checking modules is loaded
#

echo -n "Loading module sdhci -> "
[ `/sbin/lsmod | grep -i sdhci | wc -l` -gt 0 ] && echo "Module sdhci loaded succesfully" || echo "Module sdhci is not loaded"
echo -n "Loading module sdhci-pltfm -> "
[ `/sbin/lsmod | grep -i sdhci-pltfm | wc -l` -gt 0 ] && echo "Module sdhci-pltfm loaded succesfully" || echo "Module sdhci-pltfm is not loaded"
