#
# Checking modules is loaded
#

echo -n "Loading module mdio -> "
[ `/sbin/lsmod | grep -i mdio | wc -l` -gt 0 ] && echo "Module mdio loaded succesfully" || echo "Module mdio is not loaded"
echo -n "Loading module cxgb3 -> "
[ `/sbin/lsmod | grep -i cxgb3 | wc -l` -gt 0 ] && echo "Module cxgb3 loaded succesfully" || echo "Module cxgb3 is not loaded"
