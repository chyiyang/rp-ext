#
# Checking modules is loaded
#

echo -n "Loading module mii -> "
[ `/sbin/lsmod | grep -i mii | wc -l` -gt 0 ] && echo "Module mii loaded succesfully" || echo "Module mii is not loaded"
echo -n "Loading module ax88179_178a -> "
[ `/sbin/lsmod | grep -i ax88179_178a | wc -l` -gt 0 ] && echo "Module ax88179_178a loaded succesfully" || echo "Module ax88179_178a is not loaded"
