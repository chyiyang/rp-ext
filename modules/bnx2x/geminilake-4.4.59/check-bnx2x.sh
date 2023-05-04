#
# Checking modules is loaded
#

echo -n "Loading module mdio -> "
[ `/sbin/lsmod | grep -i mdio | wc -l` -gt 0 ] && echo "Module mdio loaded succesfully" || echo "Module mdio is not loaded"
echo -n "Loading module bnx2x -> "
[ `/sbin/lsmod | grep -i bnx2x | wc -l` -gt 0 ] && echo "Module bnx2x loaded succesfully" || echo "Module bnx2x is not loaded"
