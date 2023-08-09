#
# Checking modules is loaded
#

echo -n "Loading module mdio_devres -> "
[ `/sbin/lsmod | grep -i mdio_devres | wc -l` -gt 0 ] && echo "Module mdio_devres loaded succesfully" || echo "Module mdio_devres is not loaded"
