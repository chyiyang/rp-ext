#
# Checking modules is loaded
#

echo -n "Loading module mii -> "
[ `/sbin/lsmod | grep -i mii | wc -l` -gt 0 ] && echo "Module mii loaded succesfully" || echo "Module mii is not loaded"
echo -n "Loading module 8139cp -> "
[ `/sbin/lsmod | grep -i 8139cp | wc -l` -gt 0 ] && echo "Module 8139cp loaded succesfully" || echo "Module 8139cp is not loaded"
