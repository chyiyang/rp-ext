#
# Checking modules is loaded
#

echo -n "Loading module qca_7k_common -> "
[ `/sbin/lsmod | grep -i qca_7k_common | wc -l` -gt 0 ] && echo "Module qca_7k_common loaded succesfully" || echo "Module qca_7k_common is not loaded"
