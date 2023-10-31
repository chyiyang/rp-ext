#
# Checking modules is loaded
#

echo -n "Loading module mii -> "
[ `/sbin/lsmod | grep -i mii | wc -l` -gt 0 ] && echo "Module mii loaded succesfully" || echo "Module mii is not loaded"
echo -n "Loading module r8169_lk -> "
[ `/sbin/lsmod | grep -i r8169_lk | wc -l` -gt 0 ] && echo "Module r8169_lk loaded succesfully" || echo "Module r8169_lk is not loaded"
