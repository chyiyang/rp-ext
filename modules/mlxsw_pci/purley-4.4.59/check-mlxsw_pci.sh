#
# Checking modules is loaded
#

echo -n "Loading module mlxsw_core -> "
[ `/sbin/lsmod | grep -i mlxsw_core | wc -l` -gt 0 ] && echo "Module mlxsw_core loaded succesfully" || echo "Module mlxsw_core is not loaded"
echo -n "Loading module mlxsw_pci -> "
[ `/sbin/lsmod | grep -i mlxsw_pci | wc -l` -gt 0 ] && echo "Module mlxsw_pci loaded succesfully" || echo "Module mlxsw_pci is not loaded"
