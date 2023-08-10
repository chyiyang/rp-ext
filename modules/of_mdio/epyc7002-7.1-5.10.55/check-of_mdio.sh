#
# Checking modules is loaded
#

echo -n "Loading module libphy -> "
[ `/sbin/lsmod | grep -i libphy | wc -l` -gt 0 ] && echo "Module libphy loaded succesfully" || echo "Module libphy is not loaded"
echo -n "Loading module fixed_phy -> "
[ `/sbin/lsmod | grep -i fixed_phy | wc -l` -gt 0 ] && echo "Module fixed_phy loaded succesfully" || echo "Module fixed_phy is not loaded"
echo -n "Loading module of_mdio -> "
[ `/sbin/lsmod | grep -i of_mdio | wc -l` -gt 0 ] && echo "Module of_mdio loaded succesfully" || echo "Module of_mdio is not loaded"
