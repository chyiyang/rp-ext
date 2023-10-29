#
# Checking modules is loaded
#

echo -n "Loading module libphy -> "
[ `/sbin/lsmod | grep -i libphy | wc -l` -gt 0 ] && echo "Module libphy loaded succesfully" || echo "Module libphy is not loaded"
echo -n "Loading module bcm-phy-lib -> "
[ `/sbin/lsmod | grep -i bcm-phy-lib | wc -l` -gt 0 ] && echo "Module bcm-phy-lib loaded succesfully" || echo "Module bcm-phy-lib is not loaded"
