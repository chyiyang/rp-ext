#
# Checking modules is loaded
#

echo -n "Loading module libphy -> "
[ `/sbin/lsmod | grep -i libphy | wc -l` -gt 0 ] && echo "Module libphy loaded succesfully" || echo "Module libphy is not loaded"
echo -n "Loading module mdio_devres -> "
[ `/sbin/lsmod | grep -i mdio_devres | wc -l` -gt 0 ] && echo "Module mdio_devres loaded succesfully" || echo "Module mdio_devres is not loaded"
echo -n "Loading module r8169_lk -> "
[ `/sbin/lsmod | grep -i r8169_lk | wc -l` -gt 0 ] && echo "Module r8169_lk loaded succesfully" || echo "Module r8169_lk is not loaded"
