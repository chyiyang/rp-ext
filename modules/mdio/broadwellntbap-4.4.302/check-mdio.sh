#
# Checking modules is loaded
#

echo -n "Loading module mdio -> "
[ `/sbin/lsmod | grep -i mdio | wc -l` -gt 0 ] && echo "Module mdio loaded succesfully" || echo "Module mdio is not loaded"
