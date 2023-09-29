#
# Checking modules is loaded
#

echo -n "Loading module libphy -> "
[ `/sbin/lsmod | grep -i libphy | wc -l` -gt 0 ] && echo "Module libphy loaded succesfully" || echo "Module libphy is not loaded"
echo -n "Loading module mii -> "
[ `/sbin/lsmod | grep -i mii | wc -l` -gt 0 ] && echo "Module mii loaded succesfully" || echo "Module mii is not loaded"
echo -n "Loading module b44 -> "
[ `/sbin/lsmod | grep -i b44 | wc -l` -gt 0 ] && echo "Module b44 loaded succesfully" || echo "Module b44 is not loaded"
