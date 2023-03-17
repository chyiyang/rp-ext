#
# Checking modules is loaded
#

echo -n "Loading module mii -> "
[ `/sbin/lsmod | grep -i mii | wc -l` -gt 0 ] && echo "Module mii loaded succesfully" || echo "Module mii is not loaded"
echo -n "Loading module jme -> "
[ `/sbin/lsmod | grep -i jme | wc -l` -gt 0 ] && echo "Module jme loaded succesfully" || echo "Module jme is not loaded"
